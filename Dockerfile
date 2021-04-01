FROM openjdk:7

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

RUN  yum update \
  && yum install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://osbot.org/mvc/get

