# mysql-backup-cronjob-linux
Mysql database backup using cornjob for linux/Ubuntu


#Setp One -> Opne Terminal and type below comment
$ gedit backup_mysql.sh

//Note--> [your eidtor like nano/vim/gedit] [you and use anything].sh
#Setp two Bash code {Copy bleow code}

#!/bin/bash
YEAR=`date +%Y`
MONTH=`date +%m`
DAY=`date +%d`
HOUR=`date +%H`
mkdir -p $YEAR/$MONTH/$DAY/$HOUR
mysqldump -uroot -ppassword test > $YEAR/$MONTH/$DAY/$HOUR/test.sql

//Note-->  mysqldump -u[user] -p[password] [table] > $YEAR/$MONTH/$DAY/$HOUR/[as your_wish].sql



#Setp Three test your Bash code -> Opne Terminal and type below comment
$ bash backup_mysql.sh

// if you see hour home diractroy backup file, it work successfuly othereowise something worn

#Setp Four add crontab add -> Opne Terminal and type below comment

$ crontab -e

Than add below code your crontab and save it.

* */3 * * * exec `/bin/bash /home/hasan/backup_mysql.sh`

// this code for backu after 3 hours and /home/[your pc user name]/backup_mysql.sh
