echo "nginx starts services"
echo "SSH ENABLED";
/usr/sbin/sshd
rc-status
nginx -g "daemon off;"
#run telegraf
