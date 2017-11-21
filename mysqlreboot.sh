#!/bin/bash
#make crontab with >> * * * * * bash /root/mysqlreboot.sh

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
if [ ! -f /var/run/mysqld/mysqld.pid ]; then
 service mysql start;
 echo "`date` MySQL was rebooted" >> /var/log/mysqlreboot.log;
fi
