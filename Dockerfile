FROM maven

RUN mkdir ~/rsbot
COPY . ~/rsbot
WORKDIR ~/rsbot

RUN mvn install
RUN mvn compile

