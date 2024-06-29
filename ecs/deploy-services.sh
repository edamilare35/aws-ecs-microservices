#!/bin/bash

# Deploy services to the ECS cluster

CLUSTER_NAME="microservices-cluster"

aws ecs create-service --cluster $CLUSTER_NAME --service-name user-service \
  --task-definition user-service-task --desired-count 1

aws ecs create-service --cluster $CLUSTER_NAME --service-name product-service \
  --task-definition product-service-task --desired-count 1

aws ecs create-service --cluster $CLUSTER_NAME --service-name order-service \
  --task-definition order-service-task --desired-count 1

echo "Services deployed."