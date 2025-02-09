#!/bin/bash

# Variables
DOCKER_USERNAME="nitinsri"
IMAGE_NAME="my-app"
TAG="latest"

# Build Docker Image
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Login to Docker Hub
echo "Enter Docker Hub Password:"
docker login -u "$DOCKER_USERNAME"

# Push Docker Image to Docker Hub
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

# Run Docker Container
docker run -d -p 80:80 --name my-running-app $DOCKER_USERNAME/$IMAGE_NAME:$TAG
