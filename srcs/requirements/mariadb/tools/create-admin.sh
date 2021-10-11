#!/bin/sh

echo "CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';" | mysql -u root
echo "CREATE DATABASE wordpress;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON * . * TO 'admin'@'%';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root