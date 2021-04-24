#!/bin/bash

docker build -t php56 ./bin/php56/
docker build -t mysql ./bin/mysql8/
docker build -t nodejs ./bin/nodejs/

sudo cp -r ./config/ /mnt/
sudo cp -r ./www/ /mnt/
sudo cp -r ./logs /mnt/
sudo cp -r ./data/ /mnt/

docker stack deploy --compose-file docker-compose.yml projectx

