#!/bin/sh

if [ ! -f "/var/lib/mysql/ib_buffer_pool" ]; then
# rm /var/lib/mysql/mysql.sock
    /etc/init.d/mariadb setup
    rc-service mariadb start
    echo "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';" | mysql -u root
    echo "CREATE DATABASE wordpress;" | mysql -u root
    echo "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSOWRD}';" | mysql -u root
    echo "FLUSH PRIVILEGES;" | mysql -u root
    echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSOWRD}';" | mysql -u root;
    
fi
# sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/mysql/my.cnf
# sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

# sed -i "s|.*skip-networking.*|skip-networking|g" /etc/mysql/my.cnf
sed -i "s/skip-networking/#skip-networking/g" /etc/mysql/my.cnf
sed -i "s/skip-networking/#skip-networking/g" /etc/my.cnf.d/mariadb-server.cnf

rc-service mariadb restart
rc-service mariadb stop

/usr/bin/mariadbd --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --user=mysql --pid-file=/run/mysqld/mariadb.pid --skip-innodb --default-storage-engine=myisam

