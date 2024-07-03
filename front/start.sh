#!/bin/sh

# Lecture du secret et exportation comme variable d'environnement
export MYSQL_PASSWORD=$(cat /run/secrets/mysql_password)

exec node server.js
