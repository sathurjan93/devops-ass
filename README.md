# Python Flask Cloud Run Deployment

A fully automated deployment of a Python Flask web application to Google Cloud Run using Docker multi-stage builds and Terraform.

---

## Table of Contents

- [Overview](#overview)  
- [Architecture](#architecture)  
- [Prerequisites](#prerequisites)  
- [Setup & Installation](#setup--installation)  
- [Usage](#usage)  
- [Deployment](#deployment)  
- [Monitoring & Reliability](#monitoring--reliability)  
- [CI/CD Pipeline](#cicd-pipeline)  
- [Testing](#testing)  
- [Contributing](#contributing)  
- [References](#references)  

---

## Overview

This project demonstrates deploying a lightweight Python Flask application to Google Cloud Run. The deployment is containerized with Docker, optimized using a multi-stage build, and infrastructure is managed via Terraform. The system is scalable, reliable, and ready for CI/CD integration.

**Key technologies:**
- Python 3.12  
- Flask  
- Docker multi-stage build (~4MB smaller image)  
- Terraform  
- Google Cloud Run  
- GitHub Actions (CI/CD)  

---

## Architecture

The system architecture is simple and fully cloud-native:

**Components:**
- **Flask Application:** Python app served via Gunicorn  
- **Containerization:** Multi-stage Docker build to reduce image size  
- **Infrastructure:** Terraform-managed Cloud Run service  
- **CI/CD:** GitHub Actions for automated build and deployment  

---

## Prerequisites

- Python 3.12+  
- Docker  
- Terraform 1.5+  
- Google Cloud SDK (`gcloud`)  
- A GCP project with Cloud Run and Artifact Registry enabled  

---

## Setup & Installation

1. **Clone the repository**
```bash
git clone https://github.com/username/project.git
cd project
```
2. **Install Python dependencies**
```bash
pip install -r requirements.txt
```
3. Run the app locally
python app.py

4. Open http://localhost:8080 in your browser to verify the app runs.

Docker Multi-Stage Build



### Observability

The service relies on Google Cloud Run’s built-in observability features.

- **Logging**: Application and request logs are written to stdout and collected automatically by Cloud Logging.
- **Metrics**: Cloud Run exports request count, latency, error rate, and instance metrics to Cloud Monitoring.
- **Health Checks**: A `/health` endpoint is exposed and validated in CI to ensure service readiness.

### High Availability & Reliability

- Cloud Run provides regional, multi-zone high availability by default.
- The service is stateless, allowing automatic horizontal scaling.
- Autoscaling is configured with `minScale = 0` to optimize cost.
- In production, alerting policies would be configured for high error rate and latency thresholds.
