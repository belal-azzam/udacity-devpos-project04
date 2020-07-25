#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=belalazzam/flask-machine:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=dockerpath flask-machine


# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl expose deployment/flask-machine --type="NodePort" --port=80 --target-port=80 
