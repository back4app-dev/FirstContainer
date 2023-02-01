FROM node:latest

RUN mkdir /root/app/
WORKDIR /root/app/
COPY . ./
RUN npm install
COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
