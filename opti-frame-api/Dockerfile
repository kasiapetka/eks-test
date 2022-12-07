FROM --platform=linux/amd64 node:alpine
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3001

CMD ["node", "--watch", "app.js"]