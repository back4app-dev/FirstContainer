FROM node:latest

RUN npm install -g create-react-app express
RUN npm cache clean --force
RUN npx create-react-app back4app

EXPOSE 3000

CMD cd back4app && npm start
