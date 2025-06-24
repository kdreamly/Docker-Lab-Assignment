#!/bin/bash

# Variables
IMAGE_NAME="my-node-app"
CONTAINER_NAME="node-app-container"
SCREENSHOT_FILE="screenshot.png"
PORT=80

# Step 1: Build the Docker image
echo "🔧 Building Docker image..."
docker build -t $IMAGE_NAME .

# Step 2: Stop and remove existing container if running
echo "🛑 Cleaning up old containers..."
docker rm -f $CONTAINER_NAME 2>/dev/null

# Step 3: Run the container
echo "🚀 Running Docker container on port $PORT..."
docker run -d -p $PORT:$PORT --name $CONTAINER_NAME $IMAGE_NAME

# Step 4: Wait for the app to start
echo "⏳ Waiting for the app to start..."
sleep 5
