FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nginx

COPY /build/* /var/www/html/
RUN ls -R /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
