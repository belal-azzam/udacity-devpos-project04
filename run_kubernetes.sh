#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=belalazzam/flask-machine:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flask-machine --image=$dockerpath   --labels="app=flask-machine"
# kubectl create deployment --image=belalazzam/flask-machine:v1 --label app=flash-machine


# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/flask-machine 8080:80