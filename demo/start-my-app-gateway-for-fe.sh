#!/usr/bin/env bash

container_name=gateway-my-app-fe

docker pull hex0x0/my-app-gateway:latest

docker stop ${container_name}

docker rm ${container_name}

docker rmi $(docker images -f "dangling=true" -q)

# docker network create --driver=bridge --subnet=192.168.100.0/24 nginx
docker run --name ${container_name} -d --network=nginx -p 80:80 hex0x0/my-app-gateway

