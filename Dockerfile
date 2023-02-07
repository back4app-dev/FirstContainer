FROM ubuntu:latest

RUN apt-get update && apt-get install -y lighttpd

EXPOSE 80

ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
