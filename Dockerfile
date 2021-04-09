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

# Setup folder structure
RUN mkdir OSBot
RUN mkdir OSBot/Scripts

# Compile the script
RUN jar -cf OSBot/Scripts/SampleScript.jar src/main/java/SampleScript.class

