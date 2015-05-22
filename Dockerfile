# Base Image
FROM nginx:1.9

MAINTAINER Walter Scarborough <wscarbor@tacc.utexas.edu>

# Install OS Dependencies
RUN apt-get update && apt-get install -y \
    vim

RUN mkdir /var/www && mkdir /var/www/node && mkdir /var/www/html

# Configuration
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY scripts/nginx-config-replace.sh /root/nginx-config-replace.sh

RUN mkdir /var/log/nginx/persistent

CMD ["/root/nginx-config-replace.sh"]
