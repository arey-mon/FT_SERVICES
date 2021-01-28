echo "nginx starts services"
echo "SSH";
/usr/sbin/sshd
rc-status
nginx -g 'daemon off;'
#run telegraf
