FROM node:18-alpine

WORKDIR /app

COPY app/src/package*.json ./

RUN npm install

COPY app/src/ ./src/

EXPOSE 3000

CMD ["node","src/server.js"]