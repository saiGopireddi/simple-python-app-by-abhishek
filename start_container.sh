#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull saigopireddi/simple-python-flask-app-image:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 saigopireddi/simple-python-flask-app-image:latest

