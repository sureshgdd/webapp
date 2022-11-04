#!/bin/sh
docker build -t webapp .
sleep 10
docker run -d webapp  \
--mount source=target,target=/opt \
--name web_application
