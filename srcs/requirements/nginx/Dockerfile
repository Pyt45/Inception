FROM alpine

RUN apk update

RUN apk add nginx openssl openrc --no-cache

RUN openrc && touch /run/openrc/softlevel

# RUN adduser -D -g 'www' www
RUN mkdir www

# RUN chown -R www:www /var/lib/nginx
RUN chown -R root:root www

RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout \
    /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

RUN rm /etc/nginx/nginx.conf
COPY ./conf/nginx.conf /etc/nginx/
#RUN rc-service nginx start
#COPY ./tools/index.html /www/

COPY ./tools/entry.sh .
RUN chmod +x entry.sh

#EXPOSE 80
EXPOSE 443

ENTRYPOINT sh ./entry.sh
