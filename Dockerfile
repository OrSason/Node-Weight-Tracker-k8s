#getting base image
FROM node:16-alpine3.11

#Setting app location
RUN mkdir -p /home/Node-Weight-Tracker
COPY ./ ./home/Node-Weight-Tracker  
WORKDIR /home/Node-Weight-Tracker
EXPOSE 8080

#Dependencies
RUN npm install

#Deploy app
CMD  npm run dev
