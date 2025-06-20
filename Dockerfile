# Use lightweight OpenJDK base image
FROM openjdk:21-slim

WORKDIR /app
target/microservice-app-1.0-SNAPSHOT.jar




EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
