FROM ubuntu:latest
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get -y install apache2
RUN apt-get -y install php
#RUN apt-get -y install libapache2-mod-php
#RUN a2enmod php8.1
    
EXPOSE 80
CMD apachectl -D FOREGROUND
