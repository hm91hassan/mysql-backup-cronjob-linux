#!/bin/bash
YEAR=`date +%Y`
MONTH=`date +%m`
DAY=`date +%d`
TIME=`date +%H-%M-%S`
mkdir -p backupsql/$YEAR/$MONTH/$DAY/$TIME
mysqldump -uroot -ppassword test > backupsql/$YEAR/$MONTH/$DAY/$TIME/test.sql
