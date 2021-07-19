FROM node:alpine
WORKDIR '/sample-app'
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

FROM nginx
EXPOSE 8080