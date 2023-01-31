FROM node:latest

RUN mkdir /root/app
WORKDIR /root/app

RUN git clone https://github.com/DEATHTINYZ/rickandmortyinfo.git
RUN cd rickandmortyinfo && npm install && npm run build && npm run start

EXPOSE 3000

CMD serve -s build
