FROM ubuntu:latest

RUN mkdir -p  -- /root/app/src /root/app/public
WORKDIR /root/app

COPY package.json /root/app/package.json
COPY /src/* /root/app/src/
COPY /public/* /root/app/public

RUN ls -R /root/app/

EXPOSE 3000
