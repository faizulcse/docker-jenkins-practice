FROM ubuntu
MAINTAINER Faizul Islam (faizulcse@gmail.com)
RUN apt-get update
RUN apt-get install -y maven
WORKDIR /app
USER root
COPY . .
RUN mvn clean package
