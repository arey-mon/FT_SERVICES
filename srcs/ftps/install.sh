mkdir -p /var/ftp
adduser -D -h /var/ftp $USERNAME
echo "$USERNAME:$PASSWORD" | chpasswd

vsftpd /etc/vsftpd/vsftpd.conf
&>/dev/null /usr/sbin/vsftpd
