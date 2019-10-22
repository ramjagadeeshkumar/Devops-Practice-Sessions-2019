FROM ubuntu:18.04
LABEL Author="Khaja"
LABEL Org="QT"
RUN apt-get update && apt-get install openjdk-8-jdk -y
ADD https://qt-s3-new-testing.s3-us-west-2.amazonaws.com/gameoflife.war  /gameoflife.war
EXPOSE 8080
CMD ["java", "-war", "/gameoflife.war" ]