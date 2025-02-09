FROM openjdk:17-jre-alpine

EXPOSE 8080

# Ensure the JAR file name matches the one uploaded in the CI process
COPY ./build/libs/java-app-jar-ubuntu-latest.jar /usr/app/my-app.jar

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app.jar"]
