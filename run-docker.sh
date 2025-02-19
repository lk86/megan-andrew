#!/bin/bash

echo "Deleting all old containers..."

docker rm -v -f $(docker ps -qa)

docker run -it -p 3000:3000 --platform linux/amd64 --volume=/home/lhk/plenti:/home plenty
