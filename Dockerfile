FROM ubuntu:20.04

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

# Install Java
apt install software-properties-common
add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main"
apt update
apt install -q -y oracle-java8-installer

# Download osbot
RUN  apk update \
  && apk add wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://osbot.org/mvc/get -O osbot.jar

