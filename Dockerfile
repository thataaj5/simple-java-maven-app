FROM eclipse-temurin:8-jdk-alpine

ARG DEPENDENCY=target/dependency

RUN mkdir /opt/app/

COPY target/my-app.jar /opt/app/

WORKDIR "/opt/app/"

CMD ["java", "-jar", "my-app.jar"]
