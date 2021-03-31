FROM maven

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

