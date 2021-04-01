FROM ubuntu:16.04

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

# Install Java
RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main"
RUN apt install -q -y oracle-java8-installer

RUN wget https://osbot.org/mvc/get -O osbot.jar

