FROM node:latest

RUN npm install -g create-react-app express
RUN create-react-app back4app
CMD cd back4app && npm start

EXPOSE 3000
