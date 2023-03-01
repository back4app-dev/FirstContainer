FROM alpine:latest

RUN apk update && apk add lighttpd

RUN which lighttpd

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]

EXPOSE 80
