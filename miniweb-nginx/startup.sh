#!/bin/bash

# Replace environment variable placeholders in HTML files
sed -i "s/{{STATUS}}/$STATUS/g" /usr/share/nginx/html/index.html
sed -i "s/{{NAME}}/$NAME/g" /usr/share/nginx/html/index.html

# Add port 8080 to nginx configuration
sed -i '/listen.*80;/a\    listen 8080;' /etc/nginx/conf.d/default.conf

# Start nginx server
exec nginx -g "daemon off;"