#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Alias needed to run Window's Docker Desktop inside WLS
shopt -s expand_aliases
alias docker=docker.exe
alias kubectl=kubectl.exe

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=miguelangel/predictor

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag predictor $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath