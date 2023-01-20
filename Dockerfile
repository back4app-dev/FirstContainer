FROM ubuntu:latest
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
#RUN apt-get -y install apache2
RUN apt-get -y install php8.1
COPY phpinfo.php /var/www/html/phpinfo.php
RUN ls -l /var/www/html/
EXPOSE 80
CMD apachectl -D FOREGROUND
