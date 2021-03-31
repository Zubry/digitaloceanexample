FROM ubuntu:20.04

# Install Java
RUN apt-get install default-jre

# Install the JDK
RUN apt-get install wget apt-transport-https gnupg
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
RUN echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb focal main" | sudo tee /etc/apt/sources.list.d/adoptopenjdk.list
RUN apt-get update
RUN apt-get install adoptopenjdk-11-hotspot

