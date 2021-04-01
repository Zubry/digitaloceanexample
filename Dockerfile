FROM openjdk:17-jdk-alpine

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

RUN  apk update \
  && apk install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://osbot.org/mvc/get

