FROM alpine

RUN apk update
RUN apk add apache2
RUN apk add php8
RUN apk add mysql mysql-client
