FROM ubuntu:18.04

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

# Install Java
RUN apt update
RUN apt install -y default-jdk

RUN wget https://osbot.org/mvc/get -O osbot.jar

