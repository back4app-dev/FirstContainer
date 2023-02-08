FROM ubuntu

RUN apt-get update && apt-get -y install cockpit

EXPOSE 9090
