# serverpilot_backup

## 1. install dependencies

> apt install mydumper awscli pigz

## 2. configure aws

> aws configure

## 3. install crontabs

weekly filebackups ...
> wget https://github.com/inkrement/serverpilot_backup/raw/master/filebackup.sh -P /etc/cron.weekly/ && chmod a+x /etc/cron.weekly/filebackup.sh

... and daily mysqlbackups
> wget https://github.com/inkrement/serverpilot_backup/raw/master/mysqlbackup.sh -P /etc/cron.daily/ && chmod a+x /etc/cron.daily/mysqlbackup.sh
