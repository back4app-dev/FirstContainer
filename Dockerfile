FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install mysql-server
RUN apt-get -y install php7.0
RUN apt-get -y install php7.0-bcmath
RUN apt-get -y install php7.0-mcrypt
    
EXPOSE 80
CMD apachectl -D FOREGROUND
