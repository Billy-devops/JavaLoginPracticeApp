# Java Web Application Deployment using Docker & Tomcat

This project demonstrates how to deploy a Java web application using Docker and Apache Tomcat.  
The purpose of this repository is to practice real-world Java application deployment using DevOps tools.

---

## 🚀 Tech Stack
- Java (JDK 8+)
- Maven
- Apache Tomcat
- Docker
- Linux VM

---

## 📦 Project Flow
Java Code → Maven Build → WAR File → Tomcat → Docker Container → Linux VM → User Browser

---

## 🧩 Deployment Flow Diagram

![Deployment Flow Diagram](diagram/deployment-flow.png)

---

## ⚙️ Build & Run Using Docker

1. Clone the repository
git clone https://github.com/YOUR_USERNAME/java-docker-tomcat-deployment.git
cd java-docker-tomcat-deployment

2. Build Docker Image
docker build -t java-login-app .

3. Run Docker Container
docker run -d -p 8080:8080 --name loginapp java-login-app

4. Access Application
Open browser:
http://<VM-IP>:8080/JavaLoginPracticeApp

## Credits
Original project: https://github.com/devopsinsiders/JavaLoginPracticeApp  
This repository is for learning and deployment practice with Docker & Tomcat.
