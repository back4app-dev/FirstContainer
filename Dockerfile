FROM ubuntu:latest
RUN  apt-get update 
RUN apt-get install -y apache2
RUN apt-get install -y mysql-server-8.0
RUN apt-get install -y php7.0
RUN apt-get install -y phpmyadmin
