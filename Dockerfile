FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nginx
RUN cat /etc/nginx/sites-enabled/default

RUN cp index.html /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
