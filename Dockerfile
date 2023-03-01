FROM alpine:latest

#RUN apk update && apk add nginx
#COPY default /etc/nginx/sites-available/default
EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
