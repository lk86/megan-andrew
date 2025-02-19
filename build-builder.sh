#!/bin/bash

docker build --platform linux/amd64 -t megan-andrew-builder:latest --target builder .
