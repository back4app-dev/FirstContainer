FROM ubuntu:latest

RUN apt-get update && apt-get -y install lighttpd

EXPOSE 80

ENTRYPOINT ["lighttpd", "-D"]
