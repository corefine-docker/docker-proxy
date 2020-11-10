sed -i "s/dest_host/$HOST/" /etc/nginx/nginx.conf
if [ ! $PORT ];then
  DEST_PORT=8888
fi
sed -i "s/dest_port/$PORT/" /etc/nginx/nginx.conf
