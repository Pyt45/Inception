#!/bin/sh
sed -i 's/listen = 127.0.0.1:9000/listen = wordpress:9000/' /etc/php7/php-fpm.d/www.conf
rc-service php-fpm7 restart
rc-service php-fpm7 stop
/usr/sbin/php-fpm7 -F 