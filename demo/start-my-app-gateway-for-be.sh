#!/bin/bash

container_name=my-app-gateway

docker pull hex0x0/my-app-gateway:latest

docker stop ${container_name}

docker rm ${container_name}

docker rmi $(docker images -f "dangling=true" -q)

docker run --name ${container_name} -d -p 10443:10443 hex0x0/my-app-gateway

