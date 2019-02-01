#!/bin/bash

docker-compose build mongo
docker-compose build redis
docker-compose build rabbit

docker-compose up -d mongo
docker-compose up -d redis
docker-compose up -d rabbit
