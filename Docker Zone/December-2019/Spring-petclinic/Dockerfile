FROM ubuntu:18.04
LABEL Author="Khaja"
LABEL Org="QT"
RUN apt-get update && apt-get install openjdk-8-jdk -y
ADD https://venkyashhu.s3.amazonaws.com/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar  /spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar", "/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar" ]