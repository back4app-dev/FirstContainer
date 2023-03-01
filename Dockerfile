FROM ubuntu:latest

RUN apt-get update && apt-get -y install lighttpd

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

EXPOSE 80
