FROM ubuntu:latest
RUN apt-get update && apt-get install -y openjdk-21-jdk 
WORKDIR /app
COPY target/maven-standalone-application*.jar maven-standalone-application.jar 
CMD ["java","-jar","maven-standalone-application.jar"]
