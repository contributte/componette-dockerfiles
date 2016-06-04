#!/bin/bash

chown www-data:www-data /etc/nginx/auth.d -R

nginx -g "daemon off;"
