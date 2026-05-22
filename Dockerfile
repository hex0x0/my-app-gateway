FROM nginx:1.31.0
COPY reverse_proxy.conf /etc/nginx/conf.d/reverse_proxy.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY ssl /etc/nginx/ssl
RUN unlink /var/log/nginx/access.log
RUN unlink /var/log/nginx/error.log
