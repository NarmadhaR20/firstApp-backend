FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

WORKDIR /app/target

EXPOSE 8080

CMD ["java", "-jar", "firstApp-0.0.1-SNAPSHOT.jar"]

