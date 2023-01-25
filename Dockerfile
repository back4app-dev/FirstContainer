FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm
#RUN npm install -g express
#RUN npm install -g create-react-app

#RUN mkdir /root/app
#WORKDIR /root/app

#RUN create-react-app back4app-app
#RUN npm start

#EXPOSE 3000
