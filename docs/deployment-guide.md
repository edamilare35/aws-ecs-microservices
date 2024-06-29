# Deployment Guide

This guide explains how to deploy the infrastructure and microservices for the AWS ECS Microservices project.

## Prerequisites

- An AWS account
- AWS CLI installed and configured
- Docker installed
- Git installed

## Steps

### 1. Clone the Repository

```sh
git clone https://github.com/yourusername/aws-ecs-microservices.git
cd aws-ecs-microservices
```

### 2. Build Docker Images

```sh
cd docker/user-service
docker build -t user-service:latest .

cd ../product-service
docker build -t product-service:latest .

cd ../order-service
docker build -t order-service:latest .
```

### 3. Set Up IAM Role

```sh
cd infrastructure
./iam-role-setup.sh
```

### 4. Set Up Security Group

```sh
./security-group-setup.sh
```

### 5. Create ECS Cluster

```sh
cd ../ecs
./create-cluster.sh
```

### 6. Create Task Definitions

```sh
./create-task-definitions.sh
```

### 7. Deploy Services

```sh
./deploy-services.sh
```

## Usage

Once the setup is complete, the microservices application will be running on the ECS cluster. Access the services via the load balancer's DNS name or directly through the ECS service URLs.
