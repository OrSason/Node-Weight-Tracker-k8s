#getting base image
FROM ubuntu:18.04
RUN mkdir -p /home/Node-Weight-Tracker
COPY ./home/Orsas/repos/Node-Weight-Tracker ./home/Node-Weight-Tracker  
RUN apt-get update

RUN apt -y install curl
#Installing NodeJs
RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt -y install nodejs

#Dependencies
RUN ls
RUN pwd
#RUN npm install
CMD [ "echo","test" ]
