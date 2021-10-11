#!/bin/sh
echo "daemon off;" >> /etc/nginx/nginx.conf
rc-service nginx restart
# /usr/sbin/nginx -g "daemon off;"
