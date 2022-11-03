#!/bin/bash

BKUP_DIR=/backup/sar
DATE=`date '-d yesterday' '+%Y%m%d'`
DAY=`date '-d yesterday' '+%d'`

cp -f /var/log/sa/sa$DAY $BKUP_DIR/sa_$DATE
cp -f /var/log/sa/sar$DAY $BKUP_DIR/sar_$DATE
