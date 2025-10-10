FROM debian:stable-slim

RUN groupadd -g 1000 devops-team && \
    useradd -m -u 1000 -g devops-team kevino && \
    apt update && apt install curl dnsutils -y

WORKDIR /app

COPY command.sh /app

RUN chmod +x command.sh

USER kevino

ENV APP_ENV="dev"

ENTRYPOINT ["./command.sh"]
