FROM ubuntu:latest

LABEL maintainer="Antonio Cheong <windo.ac@gmail.com>"

RUN apt update && apt install -y rsyslog && rm -rf /var/lib/apt/lists/*

EXPOSE 514/udp 514/tcp

ENTRYPOINT ["/usr/sbin/rsyslogd", "-n"]
