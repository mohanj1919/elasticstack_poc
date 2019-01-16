#!/bin/bash

bash run_resources.sh

docker-compose up -d ipladmin_api
docker-compose up -d iplserver_sc
docker-compose up -d iplserver_api

cd ..

playalongpath=$PWD

echo "run ipl admin UI app"
cd $playalongpath/ipladmin/admin-app
bash startnginx
echo "$PWD"

echo "$PWD"
echo "run ipl client UI app"
cd $playalongpath/iplclient/
bash startnginx

cd ../
