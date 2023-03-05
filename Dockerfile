FROM openjdk:11-jre-slim
RUN apt update && apt upgrade -y && rm -rf /var/lib/apt/lists
RUN apt install liblog4j2-java=2.11.2-1
EXPOSE 8080
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
