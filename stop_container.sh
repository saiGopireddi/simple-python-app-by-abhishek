#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps | awk 'NR == 2 {print $1}')
if [ ! -z "$containerid" ]; then
    docker rm -f container $containerid
else
    echo "No running containers found. Skipping."
fi

