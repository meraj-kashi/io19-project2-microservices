#!/bin/bash
sudo cp -r ./config/ /mnt/
sudo cp -r ./www/ /mnt/
sudo cp -r ./logs /mnt/
sudo cp -r ./data/ /mnt/
sudo cp -r ./bacula/etc/
sudo mkdir -p /mnt/esdata || true
sudo mkdir -p /mnt/logstash-pipeline ||true

docker stack deploy --compose-file docker-compose.yml projectx
docker stack deploy --compose-file ./elastic/docker-compose.yml logging
docker stack deploy --compose-file ./bacula/docker-compose.yml backup


