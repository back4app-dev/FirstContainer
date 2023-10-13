FROM node:14

WORKDIR /usr/src/app

USER root
RUN apt-get update && \
    apt-get install -y redis-server && \
    apt-get clean

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD redis-server --daemonize yes && npm start
