FROM tomcat:9-jdk8
WORKDIR /code

RUN apt-get update && apt-get install -y git
COPY . .