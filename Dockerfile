FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Copy the JAR file located in the current directory
COPY voipservice.jar app.jar

EXPOSE 8080

# Run with container-aware memory limits for Java 21
ENTRYPOINT ["java", "-XX:MaxRAMPercentage=75.0", "-jar", "app.jar"]