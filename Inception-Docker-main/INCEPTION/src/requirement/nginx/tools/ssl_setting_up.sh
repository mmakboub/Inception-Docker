#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "Nginx: trying to setting up ssl";
# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=[sahafid.1337.ma](http://sahafid.42.ma/)"
# openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

yes "" | openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/nginx-selfsigned.key -x509 -days 365 -out /etc/ssl/certs/nginx-selfsigned.crt
echo "huuuh!! Nginx: ssl is set up";
fi

exec "$@"