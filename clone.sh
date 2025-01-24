#! /bin/bash

source .env

DIR="/var/www/split"

git clone https://${ACCESS_TOKEN}@github.com/UNSERsplit/Backend ${DIR}
cd ${DIR}
docker compose down
docker compose up --build -d