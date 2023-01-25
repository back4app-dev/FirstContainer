FROM node:latest

RUN node --version
RUN npm --version
RUN npm install -g express
RUN npm install -g create-react-app

RUN mkdir /root/app
WORKDIR /root/app

RUN create-react-app back4app-app
RUN npm start

EXPOSE 3000
