FROM ubuntu:latest

RUN apt-get update && apt-get -y install lighttpd

RUN which lighttpd

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

EXPOSE 80
