FROM nginx

WORKDIR /app

COPY . .

COPY *.html /usr/share/nginx/html
COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh

ENV STATUS="Build: local dev image"
ENV NAME="James Bond 007"

EXPOSE 8080

CMD ["/usr/local/bin/startup.sh"]
