#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="nextwebb/mldocker"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=nextwebb --password=$DOCKER_PASSWORD
docker tag mldocker $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath