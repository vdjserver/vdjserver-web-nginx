#!/bin/bash
# Based on: https://github.com/jacksoncage/nginx-docker

# Using environment variables to set nginx configuration
[ -z "${NGINX_SERVER_NAME}" ] && echo "\$NGINX_SERVER_NAME is not set" || sed -i "s:NGINX_SERVER_NAME:${NGINX_SERVER_NAME}:" /etc/nginx/nginx.conf

[ -z "${NGINX_SSL_BUNDLE_PATH}" ] && echo "\$NGINX_SSL_BUNDLE_PATH is not set" || sed -i "s:NGINX_SSL_BUNDLE_PATH:${NGINX_SSL_BUNDLE_PATH}:" /etc/nginx/nginx.conf

[ -z "${NGINX_SSL_KEY_PATH}" ] && echo "\$NGINX_SSL_KEY_PATH is not set" || sed -i "s:NGINX_SSL_KEY_PATH:${NGINX_SSL_KEY_PATH}:" /etc/nginx/nginx.conf

[ -z "${VDJAPI_PORT_8443_TCP_ADDR}" ] && echo "\$VDJAPI_PORT_8443_TCP_ADDR is not set" || sed -i "s:VDJAPI_PORT_8443_TCP_ADDR:${VDJAPI_PORT_8443_TCP_ADDR}:" /etc/nginx/nginx.conf

nginx -g 'daemon off;'
