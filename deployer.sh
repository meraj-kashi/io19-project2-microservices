#!/bin/bash

docker build -t php56 ./bin/php56/Dockerfile
docker build -t mysql ./bin/mysql8/Dockerfile
docker build -t nodejs ./bin/nodejs/Dockerfile

docker stack deploy --compose-file docker-compose.yml projectx

