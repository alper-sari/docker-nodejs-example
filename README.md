# Docker NodeJS Example
You can view the article on https://blog.alpersari.net.tr

This repository contains the necessary configuration to deploy a Docker-based application to a Kubernetes cluster. The application is named `docker-app` and runs on port `3000`.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Deployment](#deployment)

## Overview

This project demonstrates how to deploy a Docker containerized application to a Kubernetes cluster. The deployment uses a Docker image hosted on Docker Hub and runs the application in a Kubernetes environment.

## Prerequisites

Before deploying the application, ensure you have the following tools installed and configured:

- [Docker](https://www.docker.com/)
- [Kubernetes](https://kubernetes.io/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Git](https://git-scm.com/)

## Deployment

### 1. Clone the Repository

```bash
git clone https://github.com/alper-sari/docker-app.git
cd docker-app
```

### 2. Build and Push the Image to the Docker Hub
```bash
docker login (optional)
docker build -t your-dockerhub-username/docker-app:latest .
docker push your-dockerhub-username/docker-app:latest
```

### 3. Create Namespace and Deploy App
```bash
kubectl create ns first-app
kubectl apply -f deployment.yaml -n first-app
```
### 4. Inspect the Pods and Status
```bash
kubectl get pods -n first-app
```