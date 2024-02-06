FROM eclipse-temurin:17-jdk-alpine

VOLUME [ "/tmp" ]
EXPOSE 8080

ARG JAR_FILE=build/libs/2mb2d-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT [ "java", "-jar", "/app.jar" ]