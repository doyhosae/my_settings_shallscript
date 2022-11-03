#!/bin/bash
BACKUP_DIR=/backup/database

HOST_NAME=localhost
DATE=`date '+%Y%m%d_%H%M%S'`
SQL_FILE=db_$DATE.sql
FNAME=db_$DATE.tgz
USER=insuser
PASS=ins0501!

mysqldump -h$HOST_NAME -u$USER -p$PASS -A > $BACKUP_DIR/$SQL_FILE
pushd $BACKUP_DIR
tar -cvzf $FNAME $SQL_FILE
rm -f $BACKUP_DIR/$SQL_FILE
popd


echo $FNAME
