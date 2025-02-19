#!/bin/bash

echo "Starting the container..."

# docker run -it -p 3000:3000 --platform linux/amd64 --name megan-andrew megan-andrew-builder:latest
docker run -it -p 3000:3000 --platform linux/amd64 --name megan-andrew megan-andrew:latest

echo "Cleaning up..."

docker rm -v -f megan-andrew

