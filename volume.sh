#!/bin/bash
¨set -e
docker volume create data
docker run --rm -v data:/data alpine sh -c "echo hej > /data/besked.txt
docker run --rm -v data:/data alpine cat /data/besked.txt
docker volume rm besked-volume
