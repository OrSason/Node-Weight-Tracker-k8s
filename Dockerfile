#getting base image
FROM ubuntu:18.04

#setting app location
RUN mkdir -p /home/Node-Weight-Tracker
COPY ./ ./home/Node-Weight-Tracker  
RUN ls /home/Node-Weight-Tracker 
WORKDIR /home/Node-Weight-Tracker



RUN apt-get update

RUN apt -y install curl
#Installing NodeJs
RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt -y install nodejs


#Dependencies
RUN npm install


RUN ls
RUN pwd
#RUN npm install
CMD [ "npm","run","dev" ]
