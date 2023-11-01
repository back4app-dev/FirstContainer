FROM ubuntu:latest
RUN apt-get update
RUN apt-get -y install nginx
COPY https://boithatelo.github.io/motelle/

EXPOSE 80
CMD ["nginx","-g","daemon off;"]

