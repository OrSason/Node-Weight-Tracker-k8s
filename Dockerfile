#getting base image
FROM node:16-alpine3.11

#setting app location
RUN mkdir -p /home/Node-Weight-Tracker
COPY ./ ./home/Node-Weight-Tracker  
WORKDIR /home/Node-Weight-Tracker

#Dependencies
RUN npm install

#RUN npm install
CMD [ "npm","run","initdb" ]
CMD [ "npm","run","dev" ]
