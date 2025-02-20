#!/bin/bash

docker build --platform linux/amd64 -t megan-andrew:latest .

./run-docker.sh
