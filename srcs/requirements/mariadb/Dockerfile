FROM alpine

RUN apk update

RUN apk add mariadb mariadb-client mariadb-common openrc --no-cache

RUN openrc && touch /run/openrc/softlevel

COPY ./conf/wordpress.sql .
COPY ./tools/entry.sh .

RUN chmod +x entry.sh


ENTRYPOINT sh entry.sh
