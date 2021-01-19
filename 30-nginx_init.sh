sed -i "s/dest_host/$HOST/" /etc/nginx/nginx.conf
if [ ! $PORT ];then
  DEST_PORT=8888
fi
if [! $ENABLE_SSL ];then
  sed -i 's/#proxy_ssl/proxy_ssl/' /etc/nginx/nginx.conf
fi
sed -i "s/dest_port/$PORT/" /etc/nginx/nginx.conf
