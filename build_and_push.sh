#!/bin/bash

# Set variables
DOCKER_USERNAME="nitinsri"
IMAGE_NAME="my-app"
TAG="latest"

# Build the Docker image
echo "🚀 Building Docker image..."
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Log in to Docker Hub
echo "🔑 Logging in to Docker Hub..."
docker login -u $DOCKER_USERNAME

# Push the Docker image to Docker Hub
echo "📤 Pushing Docker image to Docker Hub..."
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

echo "✅ Image pushed successfully: $DOCKER_USERNAME/$IMAGE_NAME:$TAG"

