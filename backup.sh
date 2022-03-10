#!/bin/sh
docker compose run --user 33:33 --rm wpcli db export ./wp-content/backup.sql
