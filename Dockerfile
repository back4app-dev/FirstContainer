FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
