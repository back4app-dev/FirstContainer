FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install apache2
COPY phpinfo.php /var/www/phpinfo.php
EXPOSE 80
CMD apachectl -D FOREGROUND
