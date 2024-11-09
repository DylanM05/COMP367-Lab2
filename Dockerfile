# Use an official Maven image to build the project
FROM maven:3.8.1-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Use a Java runtime image to run the app
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/comp367-webapp.war app.war
CMD ["java", "-jar", "app.war"]