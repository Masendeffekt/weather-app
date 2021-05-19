FROM node:14
WORKDIR /weather-app
COPY package.json /weather-app/
RUN npm install
RUN npm ci
COPY . /app
EXPOSE 3000
CMD [ "node", "server.js" ]
#USER node