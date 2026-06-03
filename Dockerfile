FROM node:24-alpine

WORKDIR /usr/src/app

COPY package*.json .
RUN npm install 
RUN apk update && apk add curl

COPY .env.example ./.env
COPY . .

EXPOSE 3000

CMD ["npm","start"]
