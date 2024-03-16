FROM openjdk:8-jdk-alpine

RUN apk add --no-cache maven

WORKDIR /app

COPY . /app

EXPOSE 9091

CMD ["mvn", "tomcat7:run"]