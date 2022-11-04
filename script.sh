#!/bin/sh
docker build -t webapp
docker run -d webapp -p 8081:8080 \ 
--mount source=$1,target=/opt \
--name web_application
