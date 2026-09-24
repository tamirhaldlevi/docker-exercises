#!/bin/bash
set -e
docker run -d --name min-container nginx
docker exec min-container ls /usr/share/nginx/html
docker logs min-container
docker run -d --name min-store-container nginx
docker stop min-container
docker stop min-store-container
docker rm min-container
docker rm min-store-container
