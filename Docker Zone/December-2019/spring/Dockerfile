FROM ubuntu
MAINTAINER venky
WORKDIR venkyashhu
VOLUME vyshu
USER nagendra

LABEL Author ="venky" organaization ="Leomarcom"
RUN apt-get update && apt-get install apt-get install openjdk-8-jdk -y
ADD https://venkyashhu.s3.amazonaws.com/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar /spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
CMD ["java", "-jar", "/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
EXPOSE 8080
