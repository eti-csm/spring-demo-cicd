FROM openjdk:11-jre-slim
RUN apt update && apt upgrade -y
COPY files/* /root
RUN apt install -y /root/*.deb
RUN rm -rf /var/lib/apt/lists
EXPOSE 8080
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
