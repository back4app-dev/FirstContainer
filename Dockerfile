FROM ubuntu

RUN apt-get update && apt-get -y install cockpit
RUN systemctl enable --now cockpit.socket

EXPOSE 9090
