#getting base image
FROM node:16-alpine3.11

#setting app location
RUN mkdir -p /home/Node-Weight-Tracker
COPY ./ ./home/Node-Weight-Tracker  
WORKDIR /home/Node-Weight-Tracker
EXPOSE 8080

#Dependencies
RUN npm install

CMD  npm run dev
