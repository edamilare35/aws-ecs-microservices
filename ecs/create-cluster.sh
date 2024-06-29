#!/bin/bash

# Create an ECS cluster
aws ecs create-cluster --cluster-name microservices-cluster

echo "ECS cluster created."
