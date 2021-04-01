FROM ubuntu:18.04

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

# Install Java
RUN apt update
RUN apt install -y default-jdk

# Install wget
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

# Install osbot
RUN wget https://osbot.org/mvc/get -O osbot.jar

# Setup gui environment 
RUN export DISPLAY=10.75.75.75:0.0

