FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gh-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.pdvbqc2.mongodb.net
ENV MONGODB_USERNAME shahidansari
ENV MONGODB_PASSWORD TDWug2vHh4UxrUgy

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]