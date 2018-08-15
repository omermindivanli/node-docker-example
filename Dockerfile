FROM node:6.14.2

WORKDIR /Users/omermindivanli/Projects/node-docker-example

COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]