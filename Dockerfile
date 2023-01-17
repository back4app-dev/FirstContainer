FROM alpine

RUN apk update
RUN apk add apache2
RUN apk add php
RUN apk add mysql mysql-client
RUN apk add openrc --no-cache

EXPOSE 80
