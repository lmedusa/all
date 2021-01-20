FROM alpine

USER root

#COPY
COPY /srcs/nginx.conf /etc/nginx/nginx.conf
COPY /srcs/start.sh /tmp/start.sh
#COPY srcs/index.html /var/www/localhost/htdocs/index.html

RUN sh /tmp/start.sh

COPY srcs/telegraf.conf /etc/telegraf.conf

EXPOSE 80 443 22

ENTRYPOINT /etc/init.d/telegraf start; /etc/init.d/sshd start; nginx -g "daemon off;"