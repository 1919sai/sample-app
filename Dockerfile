FROM node:alpine
#ENV DB_URL=mongodb://172.18.129.29:27017/crud
#ENV NODE_ENV=CLOUD
WORKDIR '/sample-app'
COPY secrets/variables.env ./.env
COPY package*.json ./
RUN npm install
COPY ./ ./

EXPOSE 3000
ENTRYPOINT ["npm", "start"]