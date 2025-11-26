#!/usr/bin/env bash
set -euxo pipefail

#pull latest
docker pull focal1119/setup-devops-environment:latest

#stop current container
docker stop setup-devops-environment

#remove current container
docker rm setup-devops-environment

# docker run --restart=always -d --name setup-devops-environment -p 8000:80 docker.io/focal1119/setup-devops-environment:latest

docker run --restart=always -d --name setup-devops-environment -p 8000:80 docker.io/focal1119/setup-devops-environment:2025-06-08-06-44