FROM openjdk

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

RUN wget https://osbot.org/mvc/get

