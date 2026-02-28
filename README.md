CI/CD Pipeline for Containerized FastAPI Application

Overview

This project demonstrates an end-to-end CI/CD pipeline for a containerized FastAPI application using:
	•	GitHub Actions
	•	Docker (multi-stage builds)
	•	Pytest for automated testing
	•	AWS EC2 deployment

The pipeline automatically runs tests and builds a Docker image on every push to the main branch.


Architecture

Developer Push → GitHub Actions → Run Tests → Build Docker Image → Deploy to EC2


Tech Stack
	•	Python 3.10
	•	FastAPI
	•	Pytest
	•	Docker
	•	GitHub Actions
	•	AWS EC2


CI/CD Workflow

On every push to main:
	1.	Repository is checked out
	2.	Python environment is set up
	3.	Dependencies are installed
	4.	Tests are executed
	5.	Docker image is built

If tests fail, Docker build does not proceed.


Run Locally (Docker)
docker build -t fastapi-app .
docker run -p 8000:8000 -e APP_SECRET=hello123 fastapi-app

Access:
http://localhost:8000

Deployment on AWS EC2
	1.	Launch Ubuntu EC2 instance
	2.	Install Docker
	3.	Clone repository
	4.	Build Docker image
	5.	Run container with environment variable secrets


🔐 Environment-Based Secret Handling

Secrets are injected at runtime using environment variables instead of hardcoding values.
docker run -e APP_SECRET=productionsecret fastapi-app

