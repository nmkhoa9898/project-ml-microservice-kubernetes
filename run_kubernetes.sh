#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="omega9898/udacity-flaskapp"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment flaskdeployed --image="${dockerpath}:flask1"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/flaskdeployed 8000:80
