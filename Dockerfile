FROM alpine:latest

RUN apk add --no-cache openjdk21-jdk

WORKDIR /app

COPY HelloDocker.java .

RUN javac HelloDocker.java

CMD ["java", "HelloDocker"]