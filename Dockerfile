#getting base image
FROM node:15-alpine

#Setting app location
WORKDIR  /node-weight-tracker
COPY package*.json ./

#Dependencies
RUN npm install
COPY . .

#Deploy app
EXPOSE 8080
CMD  npm run dev
