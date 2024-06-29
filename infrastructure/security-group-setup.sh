#!/bin/bash

# Create a security group
SECURITY_GROUP_ID=$(aws ec2 create-security-group --group-name ecs-sg --description "ECS Security Group" --vpc-id vpc-xxxxxxxx)

# Add inbound rules to the security group
aws ec2 authorize-security-group-ingress --group-id $SECURITY_GROUP_ID --protocol tcp --port 80 --cidr 0.0.0.0/0
aws ec2 authorize-security-group-ingress --group-id $SECURITY_GROUP_ID --protocol tcp --port 3000-3002 --cidr 0.0.0.0/0

echo "Security group created and rules added."
