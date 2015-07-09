#!/bin/bash

# run-nginx.sh
# Author: Michael Stealey <michael.j.stealey@gmail.com>

### Configuration Variables ###
GINB_PATH='/home/ginotebook/ginotebook'

### SSL Configuration Variables ###
FQDN_OR_IP='ginotebook.renci.org'
SSL_CERT_FILE='hydrodev-vb.example.org.cert'
SSL_KEY_FILE='hydrodev-vb.example.org.key'
GINB_SSL_DIR='/home/'${USER}'/hs-certs'

### nginx Configuration Variables ###
GINB_NGINX_DIR='/home/ginotebook/ginotebook/nginx'
GINB_NGINX_IMG='ginb-nginx-img'
GINB_NGINX='ginb-nginx'
GINB_CNAME='ginotebook_ginotebook_1'

echo "*** RUN SCRIPT run-nginx.sh ***"

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
        --link ${GINOTEBOOK_CID}:hydroshare \
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

echo "*** FINISHED SCRIPT run-nginx.sh ***"
exit;