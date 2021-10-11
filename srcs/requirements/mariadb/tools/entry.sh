#!/bin/sh

if [ ! -f "/var/lib/mysql/ib_buffer_pool" ]; then
# rm /var/lib/mysql/mysql.sock
    /etc/init.d/mariadb setup
    rc-service mariadb restart
    sh ./create-admin.sh
    # mysql -u root < wordpress.sql
fi
rc-service mariadb restart
/usr/bin/mariadbd --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --user=mysql --pid-file=/run/mysqld/mariadb.pid