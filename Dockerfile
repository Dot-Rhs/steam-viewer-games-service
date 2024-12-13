FROM node:19
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5001
CMD ["./node_modules/.bin/nodemon", "gameInfoService.js"]