FROM ubuntu:latest
RUN apt-get update 
RUN apt-get -y install apache2 
RUN apt-get -y install apache2-utils 
RUN ufw allow 'Apache Full'

EXPOSE 80

CMD ["systemctl", "start", "apache2"]

#CMD [“apache2ctl”, “-D”, “FOREGROUND”]
