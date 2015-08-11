#!/usr/bin/env bash

# backup-ginb.sh
# Author: Michael Stealey <michael.j.stealey@gmail.com>

# set local variables
### hydrodev VM
GINB_PATH=/home/${USER}/ginotebook
BACKUP_PATH=/home/${USER}/backup

# set variables for use in script
CID=$(docker ps -a | grep ginotebook_ginotebook_1 | cut -d ' ' -f 1)
MEDIA_FILES=${GINB_PATH}/media_files

# backup database
# database in postgis container
echo "*** backing up database as ${GINB_PATH}/pg.ginotebook-`date +"%m-%d-%y"`.sql ***"
docker exec $CID /usr/bin/pg_dump -c -d postgres -U postgres -h postgis > "${GINB_PATH}/pg.ginotebook-`date +"%m-%d-%y"`.sql"

# backup media files
# ginotebook/static/media
# check for existance of media_files directory
if [ ! -d "$MEDIA_FILES" ]; then
    # media_files directory not found, create it
    echo "*** creating directory ${MEDIA_FILES} ***"
    mkdir $MEDIA_FILES;
fi
# rsync ginotebook/script/media with media_files
docker exec $CID rsync -avh --dry-run /home/docker/ginotebook/ginotebook/static/media /home/docker/ginotebook/media_files
docker exec $CID rsync -avh /home/docker/ginotebook/ginotebook/static/media /home/docker/ginotebook/media_files
cd $GINB_PATH
tar -czvf "media-ginotebook-`date +"%m-%d-%y"`.tar.gz" media_files


# backup deployment files
# Dockerfile, docker-compose.yml, settings.py, local_settings.py
# check for existance of backup directory
if [ ! -d "$BACKUP_PATH" ]; then
    # backup directory not found, create it
    echo "*** creating directory ${BACKUP_PATH} ***"
    mkdir $BACKUP_PATH;
fi

# copy deployment files to backup directory
echo "*** backup ${BACKUP_PATH}/settings.py ***"
yes | cp -rf ${GINB_PATH}/ginotebook/settings.py $BACKUP_PATH/settings.py
#echo "*** backup ${BACKUP_PATH}/local_settings.py ***"
#yes | cp -rf ${GINB_PATH}/ginotebook/local_settings.py $BACKUP_PATH/local_settings.py
echo "*** backup ${BACKUP_PATH}/Dockerfile ***"
yes | cp -rf ${GINB_PATH}/Dockerfile $BACKUP_PATH/Dockerfile
echo "*** backup ${BACKUP_PATH}/pg.deploy.sql ***"
yes | cp -rf ${GINB_PATH}/pg.ginotebook-`date +"%m-%d-%y"`.sql $BACKUP_PATH/pg.deploy.sql
echo "*** backup ${BACKUP_PATH}/media.deploy.tar.gz ***"
yes | cp -rf ${GINB_PATH}/media-ginotebook-`date +"%m-%d-%y"`.tar.gz $BACKUP_PATH/media.deploy.tar.gz
echo "*** backup ${BACKUP_PATH}/docker-compose.yml ***"
yes | cp -rf $GINB_PATH/docker-compose.yml $BACKUP_PATH/docker-compose.yml;

echo "*** FINISHED SCRIPT backup-ginb ***"
exit;
