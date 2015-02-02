#!/bin/bash

WORK_DIRECTORY=/var/www
SATIS_DIRECTORY=/opt/satis
BIN_DIRECTORY=/bin/satis

SATIS_INIT=${SATIS_INIT:-false}
SATIS_HTTPS=${SATIS_HTTPS:-false}

# Initilisation
if [ "${SATIS_INIT}" == "false" ]; then
    source $BIN_DIRECTORY/nginx.sh
    source $BIN_DIRECTORY/composer.sh
    mkdir /var/www/init
    export SATIS_INIT="true"
fi

source $BIN_DIRECTORY/build.sh
