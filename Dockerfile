#getting base image
FROM node

#setting app location
RUN mkdir -p /home/Node-Weight-Tracker
COPY ./ ./home/Node-Weight-Tracker  
RUN ls /home/Node-Weight-Tracker 
WORKDIR /home/Node-Weight-Tracker

#Dependencies
RUN npm install


RUN ls
RUN pwd
#RUN npm install
CMD [ "npm","run","initdb" ]
CMD [ "npm","run","dev" ]
