FROM ubuntu
MAINTAINER Faizul Islam (faizulcse@gmail.com)
RUN apt-get update
#RUN apt-get install -y maven
WORKDIR /app
USER root
COPY . .
#CMD ["echo", "Hello World"]
#RUN mvn clean package
#CMD ["java", "-cp", "target/docker-jenkins-practice-1.0-SNAPSHOT.jar", "Main"]
