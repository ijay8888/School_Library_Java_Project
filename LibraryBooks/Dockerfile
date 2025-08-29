# Stage 1: Build with Maven
FROM maven:3.9.11-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run the WAR
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/LibraryBooks-0.0.1-SNAPSHOT.war app.war
ENV PORT=10000
EXPOSE 10000
CMD ["sh", "-c", "java -Dserver.port=$PORT -jar app.war"]
