#!/bin/bash
set -e
docker build -t minside .
docker run -d --name site -p 8080:8000 minside
sleep 2
curl -f localhost:8080
docker rm -f site
