# AWS ECS Microservices

This repository documents the setup of a microservices application using AWS ECS. It includes containerizing each service, defining task definitions, creating an ECS cluster, and deploying the services.

## Table of Contents

- [Project Overview](#project-overview)
- [Architecture](#architecture)
- [Setup Instructions](#setup-instructions)
  - [Prerequisites](#prerequisites)
  - [Containerizing the Application](#containerizing-the-application)
  - [ECS Setup](#ecs-setup)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

This project demonstrates how to use AWS ECS to run a microservices application with multiple services such as user, product, and order services.

## Architecture

![Architecture Diagram](docs/architecture-diagram.png)

## Setup Instructions

### Prerequisites

- An AWS account
- AWS CLI installed and configured
- Docker installed
- Git installed

### Containerizing the Application

1. **Clone the Repository**
    ```sh
    git clone https://github.com/yourusername/aws-ecs-microservices.git
    cd aws-ecs-microservices
    ```

2. **Build Docker Images**
    ```sh
    cd docker/user-service
    docker build -t user-service:latest .
    
    cd ../product-service
    docker build -t product-service:latest .
    
    cd ../order-service
    docker build -t order-service:latest .
    ```

### ECS Setup

1. **Set Up IAM Role**
    ```sh
    cd infrastructure
    ./iam-role-setup.sh
    ```

2. **Create Security Group**
    ```sh
    ./security-group-setup.sh
    ```

3. **Create ECS Cluster**
    ```sh
    cd ../ecs
    ./create-cluster.sh
    ```

4. **Create Task Definitions**
    ```sh
    ./create-task-definitions.sh
    ```

5. **Deploy Services**
    ```sh
    ./deploy-services.sh
    ```

## Usage

Once the setup is complete, the microservices application will be running on the ECS cluster. You can access the services via the load balancer's DNS name.

## Contributing

Please read [http://CONTRIBUTING.md](http://CONTRIBUTING.md) for details on the code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.