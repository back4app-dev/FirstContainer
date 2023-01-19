FROM ubuntu:latest
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC
RUN apt-get -y install apache2
RUN apt-get -y install php7.0
RUN apt-get -y install libapache2-mod-php
RUN a2enmod php 
    
EXPOSE 80
CMD apachectl -D FOREGROUND
