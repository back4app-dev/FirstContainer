FROM node:latest

RUN npm install -g create-react-app express
RUN create-react-app .
CMD npm start
