FROM node:14-alpine

WORKDIR '/var/www/app'

COPY package.json .
RUN npm install

COPY *.js ./
