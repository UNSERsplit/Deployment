#! /bin/bash

source .env

DIR="/var/www/split"
CONF="/etc/nginx/sites-available/split.conf"
TMP="/tmp/ci"

cd ${TMP}
git pull
cp nginx.conf ${CONF}
nginx -s reload

cd ${DIR}
git pull
docker compose down
docker compose up --build -d