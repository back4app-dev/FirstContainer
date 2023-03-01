FROM ubuntu

RUN apt-get update && apt-get -y install nginx
COPY default /etc/nginx/sites-available/default

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
