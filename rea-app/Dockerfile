FROM --platform=linux/amd64 node:alpine as build
WORKDIR /app 
COPY ./package*.json .
RUN npm install
COPY . .
RUN npm run build 

FROM --platform=linux/amd64 nginx 
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY --from=build ./app/build . 
ENV API_URL=
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
