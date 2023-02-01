FROM alpine:latest

RUN apk update
RUN apk add nodejs npm

RUN mkdir /root/app/
WORKDIR /root/app/
COPY . ./
RUN NODE_ENV=production npm install && npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]
