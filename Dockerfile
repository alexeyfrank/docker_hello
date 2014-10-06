FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y build-essential
# RUN apt-get install -y git curl wget
RUN locale-gen en_US en_US.UTF-8

ENV USER root

# RUN apt-get install -y python-software-properties
# RUN apt-get install -y software-properties-common

RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm i -g bower gulp

# COPY ide/ /tmp/ide
RUN apt-get install -y git
RUN cd /tmp/ && git clone https://github.com/Hexlet/hexlet-ide.git ide

WORKDIR /tmp/ide
RUN bower i --allow-root
RUN npm i

RUN gulp webpack

# COPY web_starter/ /tmp/ide_starter/

EXPOSE 8080
EXPOSE 9000
