FROM alpine:3.14

RUN apk update

RUN apk add mariadb mariadb-client mariadb-common openrc --no-cache

RUN openrc && touch /run/openrc/softlevel

COPY ./tools/entry.sh .
COPY ./tools/create-admin.sh .

RUN chmod +x entry.sh
RUN chmod +x create-admin.sh


EXPOSE 3306

ENTRYPOINT sh entry.sh