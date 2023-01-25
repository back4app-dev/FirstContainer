FROM node:latest

RUN npm install -g create-react-app express

RUN mkdir /root/app
WORKDIR /root/app

COPY * /root/app/

RUN npm install 

EXPOSE 3000

CMD npm start
