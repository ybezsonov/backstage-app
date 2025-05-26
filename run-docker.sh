#!/bin/bash

# Stop any running containers
echo "Stopping any running containers..."
docker compose down

# Remove all related images to ensure a clean rebuild
echo "Removing existing Docker images..."
docker compose rm -f
# docker images | grep backstage-app | awk '{print $3}' | xargs -r docker rmi -f

# Build and start the containers with no cache to ensure complete rebuild
echo "Building Docker images from scratch..."
# docker compose build --no-cache

# Run the containers
echo "Starting Backstage application..."
docker compose up

# Note: Press Ctrl+C to stop the containers
