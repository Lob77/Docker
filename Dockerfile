FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y wget
RUN apt-get install -y openjdk-17-jdk
RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.30/bin/apache-tomcat-10.1.30.tar.gz
RUN tar -xzvf apache-tomcat-10.1.30.tar.gz


WORKDIR /

EXPOSE 8080
LABEL authors="test"
ENTRYPOINT ["./apache-tomcat-10.1.30/bin/catalina.sh", "run"]

