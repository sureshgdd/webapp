#!/bin/sh
docker build -t webapp .
sleep 10
docker run -d webapp  \
--name web_application \
-p 8081:8080
