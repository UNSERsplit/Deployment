#! /bin/bash

source .env

DIR="/var/www/split"
CONF="/etc/nginx/sites-available/split.conf"
TARGET="/etc/nginx/sites-enabled/split.conf"
TMP="/tmp/ci"

rm -rf ${TMP}
git clone https://${ACCESS_TOKEN}@github.com/UNSERsplit/Deployment ${TMP}
cp ${TMP}/nginx.conf ${CONF}
ln -s ${CONF} ${TARGET}
nginx -s reload

rm -rf ${DIR}
git clone https://${ACCESS_TOKEN}@github.com/UNSERsplit/Backend ${DIR}