#!/bin/bash

WEB_HOME=/www/inszlink/html
BACKUP_DIR=/backup/web
FNAME=web_`date '+%Y%m%d_%H%M%S'`.tgz

tar -cvzf $BACKUP_DIR/$FNAME $WEB_HOME/* --exclude $WEB_HOME/data --exclude $WEB_HOME/logs --exclude $WEB_HOME/phpmyx

echo $FNAME
