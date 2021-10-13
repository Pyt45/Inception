#!/bin/sh
sed -i 's/listen = 127.0.0.1:9000/listen = 0.0.0.0:9000/' /etc/php7/php-fpm.d/www.conf
sed -i 's/user = nobody/user = root/' /etc/php7/php-fpm.d/www.conf
sed -i 's/group = root/group = root/' /etc/php7/php-fpm.d/www.conf
#rc-service php-fpm7 restart
#rc-service php-fpm7 stop
sed -i "s/__wp_user__/${MYSQL_USER}/g" /www/wordpress/wp-config.php
sed -i "s/__wp_password__/${MYSQL_PASSWORD}/g" /www/wordpress/wp-config.php
cp /www/wordpress/wp-content/plugins/redis-cache/includes/object-cache.php /www/wordpress/wp-content/object-cache.php
/usr/sbin/php-fpm7 -F -R
