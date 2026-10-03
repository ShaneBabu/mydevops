# MyDevOps

A complete DevOps CI/CD project demonstrating automated build, testing, code quality analysis, artifact management, containerization, security scanning, and deployment.

## Technologies Used

- Git & GitHub
- Jenkins
- Maven
- SonarQube
- Nexus Repository
- Docker
- Docker Compose
- Trivy
- MySQL
- Java

## CI/CD Pipeline

```text
Developer
    ↓
GitHub
    ↓
Jenkins
    ↓
Build
    ↓
Unit Test
    ↓
SonarQube Code Quality
    ↓
Nexus Artifact Repository
    ↓
Docker Build
    ↓
Trivy Security Scan
    ↓
Deployment
```

## Project Structure

```text
mydevops/
├── src/
├── db/
├── Dockerfile
├── docker-compose.yml
├── Jenkinsfile
├── pom.xml
├── sonar-project.properties
├── .gitignore
├── .dockerignore
└── README.md
```

## Purpose

This project is created for practicing and demonstrating an end-to-end DevOps CI/CD workflow using commonly used DevOps tools.
