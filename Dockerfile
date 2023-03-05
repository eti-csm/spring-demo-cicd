FROM openjdk:11-jre-slim
RUN apt update && apt upgrade -y
EXPOSE 8080
COPY target/*.jar app.jar
COPY files/* /root
RUN apt install -y /root/*.deb
ENTRYPOINT ["java","-jar","/app.jar"]
