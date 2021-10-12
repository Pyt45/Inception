#!/bin/sh
sed -i 's/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/' /etc/php7/php-fpm.d/www.conf
sed -i 's/user = nobody/user = root/' /etc/php7/php-fpm.d/www.conf
sed -i 's/group = root/group = root/' /etc/php7/php-fpm.d/www.conf
rc-service php-fpm7 restart
rc-service php-fpm7 stop
sed -i "s/define( 'DB_USER', 'admin' );/define( 'DB_USER', '${MYSQL_USER}' );/" /www/wordpress/wp-config.php
sed -i "s/define( 'DB_PASSWORD', 'admin' );/define( 'DB_PASSOWRD', '${MYSQL_PASSWORD}' );/" /www/wordpress/wp-config.php
/usr/sbin/php-fpm7 -F -R 
