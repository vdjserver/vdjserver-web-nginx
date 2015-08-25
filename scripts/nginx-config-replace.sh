#!/bin/bash
# Based on: https://github.com/jacksoncage/nginx-docker

# Using environment variables to set nginx configuration

[ -z "${VDJAPI_PORT_8081_TCP_ADDR}" ] && echo "\$VDJAPI_PORT_8081_TCP_ADDR is not set" || sed -i "s:VDJAPI_PORT_8081_TCP_ADDR:${VDJAPI_PORT_8081_TCP_ADDR}:" /etc/nginx/nginx.conf

nginx -g 'daemon off;'
