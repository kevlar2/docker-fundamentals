#!/bin/bash

# Replace environment variable placeholders in HTML files
sed -i "s/{{STATUS}}/$STATUS/g" /usr/local/apache2/htdocs/index.html
sed -i "s/{{NAME}}/$NAME/g" /usr/local/apache2/htdocs/index.html

# Start Apache HTTP server
exec httpd-foreground