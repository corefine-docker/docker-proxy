FROM nginx:1.18
ADD nginx.conf /etc/nginx/nginx.conf
ADD 30-nginx_init.sh /docker-entrypoint.d
RUN chmod +x /docker-entrypoint.d/30-nginx_init.sh
