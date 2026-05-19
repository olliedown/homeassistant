#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

if [ -d /config/aurral ] && [ ! -d /config/addons_config/aurral ]; then
    echo "Moving to new location /config/addons_config/aurral"
    mkdir -p /config/addons_config/aurral
    chmod 777 /config/addons_config/aurral
    mv /config/aurral/* /config/addons_config/aurral/
    rm -r /config/aurral
fi
