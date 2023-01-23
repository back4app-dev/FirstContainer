FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nginx
RUN cat /etc/nginx/sites-enabled/default

RUN mv index.html /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
