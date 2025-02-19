#!/bin/bash

echo "Deleting all old containers..."

docker rm -v -f $(docker ps -qa)

# docker run -it -p 3000:3000 --platform linux/amd64 megan-andrew-builder:latest
docker run -it -p 3000:3000 --platform linux/amd64 megan-andrew:latest
