FROM node:latest

RUN mkdir /root/app
WORKDIR /root/app

RUN npx create-next-app@latest nextjs-blog --use-npm
RUN npm install
RUN npm run build
RUN npm run start

EXPOSE 3000
