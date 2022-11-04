#!/bin/sh
ex=$1
docker build -t webapp .
sleep 10
docker run -d webapp  \
--mount source=$ex,target=/opt \
--name web_application
