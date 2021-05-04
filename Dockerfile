#getting base image
FROM ubuntu:18.04

RUN apt-get update

RUN sudo apt install curl

RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt install nodejs

CMD [ "echo","test" ]