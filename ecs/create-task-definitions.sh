#!/bin/bash

# Define task definitions for each service

aws ecs register-task-definition --family user-service-task \
  --container-definitions '[
    {
      "name": "user-service",
      "image": "user-service:latest",
      "essential": true,
      "portMappings": [
        {
          "containerPort": 3000,
          "hostPort": 0
        }
      ]
    }
  ]'

aws ecs register-task-definition --family product-service-task \
  --container-definitions '[
    {
      "name": "product-service",
      "image": "product-service:latest",
      "essential": true,
      "portMappings": [
        {
          "containerPort": 3001,
          "hostPort": 0
        }
      ]
    }
  ]'

aws ecs register-task-definition --family order-service-task \
  --container-definitions '[
    {
      "name": "order-service",
      "image": "order-service:latest",
      "essential": true,
      "portMappings": [
        {
          "containerPort": 3002,
          "hostPort": 0
        }
      ]
    }
  ]'

echo "Task definitions created."
