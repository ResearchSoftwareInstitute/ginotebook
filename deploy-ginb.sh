#!/usr/bin/env bash

# deploy-ginb.sh
# Author: Michael Stealey <michael.j.stealey@gmail.com>

CONFIG_DIR=${PWD}
CONFIG_FILE='ginotebook-config.yaml'

echo "*** RUN SCRIPT deploy-ginb.sh ***"

# read rodsuser-config.yaml into environment
sed -e "s/:[^:\/\/]/=/g;s/$//g;s/ *=/=/g" $CONFIG_FILE > $CONFIG_DIR/ginotebook-config.sh
sed -i 's/#.*$//' $CONFIG_DIR/ginotebook-config.sh
sed -i '/^$/d' $CONFIG_DIR/ginotebook-config.sh
while read line; do export $line; done < <(cat $CONFIG_DIR/ginotebook-config.sh)

### ginotebook ###
cd ${GINB_PATH}

# check for --clean flag
if [[ ${1} = '--clean' ]]; then
    echo "*** remove and rebuild IMG: ${GINB_IMG_NAME} and CONTAINER: ${GINB_CNAME} ***"
    docker stop $(docker ps -a -q)
    docker rm -fv $(docker ps -a -q)
    docker rmi ${GINB_IMG_NAME};
fi

# get submodules
echo "*** get git submodules ***"
git submodule init && git submodule update

# build sshd_base if it doesn't exist
CHECK_BASE_IMAGE=`docker images | tr -s ' ' | cut -d ' ' -f 1 | grep ${GINB_BASE_IMG}`
if [[ -z "${CHECK_BASE_IMAGE}" ]]; then
    cd sshd_base
    echo "*** docker build -t ${GINB_BASE_IMG} . ***"
    docker build -t ${GINB_BASE_IMG} .
    cd ${GINB_PATH};
else
    echo "*** IMG: ${GINB_BASE_IMG} already exists ***";
fi

# build docker containers as defined in docker-compose.yml
echo "*** build docker containers as defined in docker-compose.yml ***"
docker-compose build
echo "*** bring up all docker containers as defined in docker-compose.yml ***"
docker-compose up -d
sleep 3s

# load pg.development.sql into postgis database
echo "*** load clean pg.development.sql database from the running hydroshare container ***"
echo "*** drop existing database ***"
docker exec ${GINB_CNAME} dropdb -U postgres -h postgis postgres
echo "*** create new database ***"
docker exec ${GINB_CNAME} createdb -U postgres -h postgis postgres --encoding UNICODE --template=template0
echo "*** create POSTGIS extension ***"
docker exec ${GINB_CNAME} psql -U postgres -h postgis -w -c 'create extension postgis;'
echo "*** load database with contents of pg.development.sql ***"
#docker exec ${GINB_CNAME} psql -U postgres -h postgis -f pg.development.sql
echo "*** mangae.py collectstatic ***"
docker exec ${GINB_CNAME} python manage.py collectstatic -v0 --noinput
echo "*** manage.py makemigrations ***"
docker exec ${GINB_CNAME} python manage.py makemigrations
echo "*** manage.py migrate ***"
docker exec ${GINB_CNAME} python manage.py migrate

### nginx ###
cd ${GINB_NGINX_DIR}

# check for --clean flag
if [[ ${1} = '--clean' ]]; then
    echo "*** remove and rebuild IMG: ${GINB_NGINX_IMG} and CONTAINER: ${GINB_NGINX} ***"
    docker stop ${GINB_NGINX}
    docker rm ${GINB_NGINX}
    docker rmi ${GINB_NGINX_IMG};
fi

# create hs-certs directory if it doesn't exist
if [[ ! -d ${GINB_SSL_DIR} ]]; then
    echo "*** creating directory: ${GINB_SSL_DIR} ***"
    mkdir ${GINB_SSL_DIR};
fi

# copy ssl cert and ssl key to hs-certs directory
yes | cp -rf ${SSL_CERT_FILE} ${GINB_SSL_DIR}
yes | cp -rf ${SSL_KEY_FILE} ${GINB_SSL_DIR}

# create ginb-nginx.conf file
yes | cp -rf ${GINB_NGINX_DIR}/ginotebook-nginx.conf ${GINB_NGINX_DIR}/ginb-nginx.conf
sed -i 's/FQDN_OR_IP/'${FQDN_OR_IP}'/g' ${GINB_NGINX_DIR}/ginb-nginx.conf
sed -i 's/SSL_CERT_FILE/'${SSL_CERT_FILE}'/g' ${GINB_NGINX_DIR}/ginb-nginx.conf
sed -i 's/SSL_KEY_FILE/'${SSL_KEY_FILE}'/g' ${GINB_NGINX_DIR}/ginb-nginx.conf

# build hs-nginx if it doesn't exist
CHECK_NGINX_IMAGE=`docker images | tr -s ' ' | cut -d ' ' -f 1 | grep ${GINB_NGINX_IMG}`
if [[ -z "${CHECK_NGINX_IMAGE}" ]]; then
    echo "*** docker build -t ${GINB_NGINX_IMG} . ***"
    docker build -t ${GINB_NGINX_IMG} .;
else
    echo "*** IMG: ${GINB_NGINX_IMG} already exists ***";
fi

# Launch nginx as docker container web-nginx
GINOTEBOOK_CID=`docker ps | grep ${GINB_CNAME} | tr -s ' ' | cut -d ' ' -f 1`
CHECK_NGINX_CID=`docker ps -a | tr -s ' ' | grep ${GINB_NGINX} | cut -d ' ' -f 1`
if [[ -z "${CHECK_NGINX_CID}" ]]; then
    echo "*** docker run ${GINB_NGINX_IMG} as ${GINB_NGINX} ***"
    docker run -d --name ${GINB_NGINX} \
        --link ${GINOTEBOOK_CID}:ginotebook \
        -p 80:80 -p 443:443 \
        --volume ${GINB_SSL_DIR}:/hs-certs \
        --volumes-from ${GINOTEBOOK_CID} \
        -ti ${GINB_NGINX_IMG};
else
    CHECK_NGINX_CID=`docker ps | tr -s ' ' | grep ${GINB_NGINX} | cut -d ' ' -f 1`
    if [[ -z "${CHECK_NGINX_CID}" ]]; then
        echo "*** CONTAINER: ${GINB_NGINX} already exists but is not running, restarting the container ***"
        docker start ${GINB_NGINX};
    else
        echo "*** CONTAINER: ${GINB_NGINX} already exists as CID: ${CHECK_NGINX_CID}, restart current container ***";
        docker stop ${GINB_NGINX}
        sleep 1s
        docker start ${GINB_NGINX};
    fi
fi

echo "*** FINISHED SCRIPT deploy-ginb.sh ***"
exit;