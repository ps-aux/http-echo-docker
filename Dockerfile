#Shamelessly 'stolen' from https://github.com/brndnmtthws/nginx-echo-headers
FROM openresty/openresty:1.11.2.5-alpine

EXPOSE 8080
ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN chgrp -R 0 /usr/local/openresty/nginx/ && \
    chmod -R g=u /usr/local/openresty/nginx/
