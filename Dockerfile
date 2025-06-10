FROM node:20-slim
WORKDIR /user/src/app
COPY package*.json ./

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
