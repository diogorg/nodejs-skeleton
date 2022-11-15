FROM node:18.11.0-alpine3.16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i

COPY . .

RUN apk update && \
    apk add git

RUN npm update -g npm

EXPOSE 3001