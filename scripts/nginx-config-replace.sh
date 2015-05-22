#!/bin/bash
# Based on: https://github.com/jacksoncage/nginx-docker

# Using environment variables to set nginx configuration
[ -z "${SERVER_NAME}" ] && echo "\$SERVER_NAME is not set" || sed -i "s:SERVER_NAME:${SERVER_NAME}:" /etc/nginx/nginx.conf

[ -z "${SSL_BUNDLE_PATH}" ] && echo "\$SSL_BUNDLE_PATH is not set" || sed -i "s:SSL_BUNDLE_PATH:${SSL_BUNDLE_PATH}:" /etc/nginx/nginx.conf

[ -z "${SSL_KEY_PATH}" ] && echo "\$SSL_KEY_PATH is not set" || sed -i "s:SSL_KEY_PATH:${SSL_KEY_PATH}:" /etc/nginx/nginx.conf

[ -z "${VDJAPI_PORT_8443_TCP_ADDR}" ] && echo "\$VDJAPI_PORT_8443_TCP_ADDR is not set" || sed -i "s:VDJAPI_PORT_8443_TCP_ADDR:${VDJAPI_PORT_8443_TCP_ADDR}:" /etc/nginx/nginx.conf

nginx -g 'daemon off;'
