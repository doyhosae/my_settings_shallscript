#!/bin/bash

TODAY=$(date +%Y%m%d)
echo `crontab -l > /backup/cron/cron_$TODAY`
