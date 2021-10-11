FROM alpine:3.14

RUN apk update

RUN apk add mariadb mariadb-client mariadb-common openrc --no-cache

RUN openrc && touch /run/openrc/softlevel

COPY ./tools/entry.sh .

RUN chmod +x entry.sh


ENTRYPOINT sh entry.sh