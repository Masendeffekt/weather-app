FROM node:14
WORKDIR /app
COPY package.json /app/
RUN npm install
RUN npm ci
COPY . /app
EXPOSE 3000
ENV NODE_ENV production
CMD [ "node", "server.js" ]
#USER node