FROM alpine:latest

RUN apk add --update nodejs nodejs-npm

RUN mkdir /root/app/
WORKDIR /root/app/
COPY . ./
RUN NODE_ENV=production npm install && npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
