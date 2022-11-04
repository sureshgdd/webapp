#!/bin/sh
docker build -t webapp .
sleep 10
docker run -d --name web_appl -p 8081:8080 webapp
