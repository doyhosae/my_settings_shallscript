#!/bin/bash

#backup_delete.sh
#제거할 backup 파일 경로 및 제목
DIRECTORY_SA="/backup/sar/"
DIRECTORY_SAR="/backup/sar/"
DIRECTORY_DB="/backup/database/"
DIRECTORY_WEB="/backup/web/"
DIRECTORY_CRON="/backup/cron/"
TITLE_SA="sa_"
TITLE_SAR="sar_"
TITLE_DB="db_"
TITLE_WEB="web_"
TITLE_CRON="cron_"

# 오늘자 기준 한달 전
PAST=$(date +%Y%m%d -d '1 month ago')
# 이주일 전 '2 week ago'

# SAR
echo `rm $DIRECTORY_SA$TITLE_SA$PAST`
echo `rm $DIRECTORY_SAR$TITLE_SAR$PAST`

# DB
echo `rm $DIRECTORY_DB$TITLE_DB$PAST*.tgz`

# WEB
echo `rm $DIRECTORY_WEB$TITLE_WEB$PAST*.tgz`

# CRON
echo `rm $DIRECTORY_CRON$TITLE_CRON$PAST`
