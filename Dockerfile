FROM node:12

WORKDIR /kamila_zaeva/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 8080
CMD ["node", "dist/main"]
