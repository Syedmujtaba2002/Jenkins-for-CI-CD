# Java Spring Boot CI/CD with Jenkins

## Description
This project demonstrates a Jenkins CI/CD pipeline for a Java Spring Boot app using Docker and Maven.

## How to Use
- Clone the repo
- Build with Maven
- Build and run Docker container

## Run
```bash
mvn clean package
docker build -t my-app .
docker run -p 8080:8080 my-app
