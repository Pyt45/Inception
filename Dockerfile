FROM debian:buster
RUN apt update
RUN apt upgrade -y
RUN apt install mariadb-server -y
COPY data.sql ./
RUN service mysql start

# database : mysql | mongodb | noe4j | typeorm -> typescript
# backend: nodejs | expressjs | graphql apollo-server
# fronend: reactjs | nextjs css sass tailwaind