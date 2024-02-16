FROM node:latest
WORKDIR /app
COPY package*.json ./
COPY . . 
EXPOSE 5000
ENTRYPOINT ["npm", "start"]
