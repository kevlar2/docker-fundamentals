FROM httpd:latest

WORKDIR /app

COPY . .

COPY *.html /usr/local/apache2/htdocs/
COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh

COPY httpd-custom.conf /usr/local/apache2/conf/extra/httpd-custom.conf
RUN echo "Include conf/extra/httpd-custom.conf" >> /usr/local/apache2/conf/httpd.conf

ENV STATUS="Build: local dev image"

EXPOSE 8080

CMD ["/usr/local/bin/startup.sh"]
