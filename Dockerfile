FROM node:latest

RUN npm install -g create-react-app express

RUN mkdir -p 00 /root/app /root/app/src /root/app/public
WORKDIR /root/app

COPY package.json /root/app/package.json
COPY /src/src/* /root/app/src
COPY /src/public/* /root/app/public

RUN ls -R /root/app

RUN npm install 

EXPOSE 3000

CMD npm start
