FROM node:latest

RUN mkdir /root/app
WORKDIR /root/app

RUN git clone https://github.com/DEATHTINYZ/rickandmortyinfo.git ./
RUN npm install
RUN npm run build
RUN npm run start

EXPOSE 3000
