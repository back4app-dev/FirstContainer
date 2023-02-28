FROM ubuntu:latest

RUN apt-get update && apt-get install nginx

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
