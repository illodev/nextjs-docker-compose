#!/bin/bash

if hash docker-compose 2>/dev/null; then
    DOCKER_COMPOSE="docker-compose"
elif hash docker compose 2>/dev/null; then
    DOCKER_COMPOSE="docker compose"
else
    echo "Please install docker-compose"
    exit 1
fi
 
# Stop containers
$DOCKER_COMPOSE -f docker-compose.yml -f docker-compose-dev.yml down --remove-orphans -v
