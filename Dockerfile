# syntax=docker/dockerfile:1

FROM node:18-alpine

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD ["node", "index.js"]
