#!/bin/bash
set -e
docker volume create data
docker run --rm -v data:/data alpine sh -c "echo hej > /data/besked.txt"
docker run --rm -v data:/data alpine cat /data/besked.txt
docker volume rm data
! docker run --rm alpine cat /data/besked.txt
docker run -d --name volume-site -v data:/data minside
docker exec volume-site sh -c 'echo "Besked fra minside" > /data/minside.txt'
docker rm -f volume-site

docker run --rm -v data:/data minside cat /data/minside.txt
