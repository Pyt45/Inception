FROM alpine

RUN apk update

RUN apk add wget php-fpm

RUN apk add php7-common php7-iconv php7-json php7-gd php7-curl \
    php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql \
    php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom

RUN apk add php7 php7-fpm php7-opcache php7-session php7-mbstring
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl php7-redis

RUN apk add openrc
RUN openrc && touch /run/openrc/softlevel

RUN wget http://wordpress.org/latest.tar.gz
RUN mkdir -p www
RUN tar -xzvf latest.tar.gz && rm -rf latest.tar.gz && cp -Rf wordpress www/
RUN rm -rf wordpress
RUN wget https://downloads.wordpress.org/plugin/redis-cache.2.0.21.zip
RUN unzip redis-cache.2.0.21.zip && rm -rf redis-cache.2.0.21.zip
RUN cp -Rf redis-cache /www/wordpress/wp-content/plugins/  
COPY ./tools/entry.sh .
COPY ./conf/wp-config.php ./www/wordpress/wp-config.php
RUN chmod +x entry.sh

ENTRYPOINT sh entry.sh
