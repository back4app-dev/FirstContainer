FROM ubuntu
RUN apt-get update
RUN apt-get install nginx
RUN sudo service nginx start
