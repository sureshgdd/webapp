#!/bin/sh
docker build -t webapp .
sleep 10
docker run -d --name web_application webapp
