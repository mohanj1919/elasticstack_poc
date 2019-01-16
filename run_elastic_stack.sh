#!/bin/bash

sudo sysctl -w vm.max_map_count=262144

echo "building docker images"

docker-compose build elasticsearch
docker-compose build kibana
docker-compose build logstash_server
docker-compose build filebeat

echo "run elastic search service"
docker-compose up -d elasticsearch

echo "run kibana service"
docker-compose up -d kibana

echo "run logstash service"
docker-compose up -d logstash_server

echo "run beats service"
docker-compose up -d filebeat
