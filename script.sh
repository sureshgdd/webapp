#!/bin/sh
ex=$1
docker build -t webapp .
sleep 10
docker run -d  \
-p 8081:8080 \
--mount source=$ex,target=/opt \
--name web_application
webapp:latest
