FROM node:10.13-alpine

COPY . /app
WORKDIR /app

RUN npm install -g hubot-youtube

WORKDIR /app

CMD cd /app; bin/hubot --adapter slack

