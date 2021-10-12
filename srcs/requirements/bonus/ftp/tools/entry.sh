#!/bin/sh
rc-service vsftpd restart
rc-service vsftpd stop
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
