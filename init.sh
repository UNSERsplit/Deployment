#! /bin/bash

source .env

DIR="/var/www/split"
CONF="/etc/nginx/sites-available/split.conf"
TMP="/tmp/ci"

rm -rf ${TMP}
git clone https://${ACCESS_TOKEN}@github.com/UNSERsplit/Deployment ${TMP}


rm -rf ${DIR}
git clone https://${ACCESS_TOKEN}@github.com/UNSERsplit/Backend ${DIR}