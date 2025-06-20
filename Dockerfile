
FROM openjdk:21-slim

WORKDIR /app

# FIXED LINE
COPY target/microservice-app-1.0-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

