#getting base image
FROM ubuntu:18.04

RUN apt-get update

RUN curl -fsSL https://deb.nodesource.com/setup_15.x | sudo -E bash -
RUN apt install nodejs

CMD [ "echo","test" ]