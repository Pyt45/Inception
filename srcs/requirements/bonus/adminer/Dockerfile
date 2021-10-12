FROM alpine

RUN apk update

RUN apk add php-fpm
RUN apk add php7-common php7-iconv php7-json php7-gd php7-curl \
    php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql \
    php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
RUN apk add php7 php7-fpm php7-opcache php7-session php7-mbstring
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl
RUN apk add php
RUN apk add wget

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-en.php
RUN mv adminer-4.8.1-en.php index.php

CMD php -S 0.0.0.0:5000
