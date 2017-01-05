#!/bin/bash
/usr/bin/mysql_install_db --defaults-file=/veris/mysql/3306/etc/my_3306.cnf --basedir=/usr --datadir=/veris/mysql/3306/data --user=mysql
/usr/bin/mysqld_safe --defaults-file=/veris/mysql/3306/etc/my_3306.cnf  --ledir=/usr/sbin &
while [ 1 ]
do
  sleep 3600
done
