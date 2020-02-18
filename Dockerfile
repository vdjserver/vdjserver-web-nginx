# Base Image
FROM nginx:1.10-alpine

MAINTAINER VDJServer <vdjserver@utsouthwestern.edu>

RUN mkdir /var/www \
    && mkdir /var/www/node \
    && mkdir /var/www/html \
    && mkdir /var/log/nginx/persistent

# Configuration
COPY nginx/nginx.conf /etc/nginx/nginx.conf
