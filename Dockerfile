FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nodejs
RUN npx create-react-app frontend
RUN npx express-generator
RUN npm install pm2@latest -g

EXPOSE 80
