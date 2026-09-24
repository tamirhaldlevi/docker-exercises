#!/bin/bash
set -e
docker run -d --name min-container nginx
docker exec min-container ls /usr/share/nginx/html
docker logs min-container
docker run -d --name min-store-container nginx
