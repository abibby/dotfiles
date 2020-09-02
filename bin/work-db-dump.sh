#!/bin/sh

export $(cat /home/adam/Documents/work/web-dashboard/.env | sed 's/#.*//g' | xargs)

mkdir -p /home/adam/Documents/work/dumps/

mysqldump --no-data \
    -h "$DB_HOST" \
    -u "$DB_USERNAME" \
    -p"$DB_PASSWORD" \
    $DB_DATABASE > /home/adam/Documents/work/dumps/mero-dump.sql