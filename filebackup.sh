#!/bin/bash

TIMESTR=`date +"%y%m%d"`
NAME=`hostname`
BACKUPFILE="/tmp/${NAME}_files_$TIMESTR.tar.gz"

tar -cPp --use-compress-program=pigz -f $BACKUPFILE  /srv/users/
aws s3 cp $BACKUPFILE s3://cloudhipsters.backup/ --only-show-errors
rm -rf $BACKUPFILE
