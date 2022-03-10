#!/bin/sh
FILE=./content/backup.sql
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    docker-compose run --user 33:33 --rm wpcli db import $FILE
else 
    echo "$FILE does not exist."
fi