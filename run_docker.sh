#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=belalazzam/flask-machine:v1 .

docker image ls
# Step 2: 
# List docker images
docker run -p 8000:80 belalazzam/flask-machine:v1
# Step 3: 
# Run flask app
