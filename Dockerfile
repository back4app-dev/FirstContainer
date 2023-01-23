FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nginx
RUN cat /etc/nginx/sites-enabled/default

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
