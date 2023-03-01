FROM alpine:latest

RUN apk update && apk add nginx
COPY default /usr/share/nginx/html
#COPY default /etc/nginx/sites-available/default
EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
