# Install Operating system and dependencies
FROM node:lts-alpine

RUN npm -y -g install serve
WORKDIR /app/
COPY . .

EXPOSE 3000
CMD ["serve", "sample-angular-app"]
