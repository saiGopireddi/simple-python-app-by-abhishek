#!/bin/bash
set -e

# Stop the running container (if any)
containerids=$(docker ps -q)
if [ -n "$containerids" ]; then
    for containerid in $containerids; do
        docker rm -f $containerid
    done
else
    echo "No running containers found. Skipping."
fi
