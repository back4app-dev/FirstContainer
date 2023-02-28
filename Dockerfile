FROM ubuntu:latest

RUN apt-get update && apt-get -y install nginx
COPY default /etc/nginx/sites-available/default
EXPOSE 8080/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
