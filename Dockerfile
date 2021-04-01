FROM openjdk

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

RUN  apt update \
  && apt install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://osbot.org/mvc/get

