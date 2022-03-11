#!/bin/bash
FILE=./contents/backup.sql
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    docker-compose run --user 33:33 --rm wpcli db import ./wp-contents/backup.sql
else 
    echo "$FILE does not exist."
fi

