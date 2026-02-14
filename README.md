# 🚀 Production-Ready Backend Deployment using CI/CD

## 📌 Project Overview
This project demonstrates the deployment of a containerized Node.js backend application on AWS EC2 using Docker Compose and NGINX reverse proxy.  
It integrates a CI/CD pipeline using GitHub Actions to enable automated deployment of the backend application on every code push to the main branch without requiring manual SSH access to the server.

---

## 🛠 Tech Stack
- Node.js
- Express.js
- Docker
- Docker Compose
- NGINX
- AWS EC2
- GitHub Actions (CI/CD)

---

## ⚙️ Features
- Containerized backend application using Docker
- NGINX configured as a reverse proxy
- Backend service secured from public exposure
- Health monitoring endpoint `/health`
- Automated CI/CD pipeline using GitHub Actions
- Zero-manual deployment after code push
- Secure SSH-based deployment mechanism

---

## 🏗 System Architecture

Client Request
↓
NGINX (Reverse Proxy)
↓
Docker Compose
↓
Node.js Backend Application


NGINX handles incoming client requests and forwards them securely to the backend service running inside Docker containers on the EC2 instance.

---

## 🔁 CI/CD Workflow

Whenever code is pushed to the `main` branch:

1. GitHub Actions workflow is triggered automatically
2. Workflow establishes a secure SSH connection to the EC2 instance
3. Pulls the latest source code from GitHub
4. Stops the existing Docker containers
5. Rebuilds Docker images with updated code
6. Restarts the application using Docker Compose

This ensures automated and continuous deployment without manual intervention.

---

## 🧪 Health Check Endpoint

A health monitoring endpoint has been implemented for service validation:



http://<EC2-PUBLIC-IP>/health


### Sample Response:
```json
{
  "status": "OK",
  "message": "Server is healthy"
}


This endpoint is used to verify the availability and operational status of the backend service.

🔒 Security Measures

Backend service port is not exposed publicly

All external traffic is routed through NGINX reverse proxy

Deployment is performed via secure SSH authentication

Automated container lifecycle management using Docker Compose

🚀 Deployment Steps (Manual Setup)

Launch AWS EC2 instance

Install Docker and Docker Compose

Configure NGINX as a reverse proxy

Clone the GitHub repository

Run the application using Docker Compose

📦 Automated Deployment

GitHub Actions is configured to automatically deploy the backend application to the EC2 instance on every push to the main branch.

📈 Resume Highlights

Implemented CI/CD pipeline using GitHub Actions

Deployed Dockerized backend on AWS EC2

Configured NGINX reverse proxy for secure routing

Secured backend service from public access

Added health monitoring endpoint for service validation 



