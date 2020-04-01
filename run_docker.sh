#!/usr/bin/env bash

# Alias needed to run Window's Docker Desktop inside WLS
shopt -s expand_aliases
alias docker=docker.exe
alias kubectl=kubectl.exe

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . --tag=predictor

# Step 2: 
# List docker images
docker image ls -a

# Step 3: 
# Run flask app
docker container run -p 8000:80 predictor