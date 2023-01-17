FROM alpine

RUN apk update
RUN apk add apache2
RUN apk add php7 php7-fpm php7-opcache
RUN apk add php7-gd php7-mysqli php7-zlib php7-curl
RUN apk add mysql mysql-client
