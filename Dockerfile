# Use an official Maven image to build the project
FROM maven:3.8.1-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Use an official Tomcat image to run the app
FROM tomcat:9.0-jdk11-openjdk-slim
WORKDIR /usr/local/tomcat/webapps/
COPY --from=build /app/target/comp367-webapp.war ./ROOT.war