#!/bin/sh
rc-service vsftpd restart
rc-service vsftpd stop
chmod -R 777 /home/user/
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
