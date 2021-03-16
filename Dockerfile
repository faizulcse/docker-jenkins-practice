FROM ubuntu
MAINTAINER Faizul Islam (faizulcse@gmail.com)
RUN apt-get update
WORKDIR /app
USER root
COPY . .
RUN mvn clean package
