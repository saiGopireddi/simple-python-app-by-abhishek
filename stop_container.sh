#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q)
if [ ! -z "$containerid" ]; then
    docker rm -f $containerid
fi

