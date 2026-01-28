#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
set -e

if [ ! -d /share/music ]; then
    echo "Creating /share/music"
    mkdir -p /share/music
    chown -R "$PUID:$PGID" /share/music
fi

if [ ! -d /share/downloads ]; then
    echo "Creating /share/downloads"
    mkdir -p /share/downloads
    chown -R "$PUID:$PGID" /share/downloads
fi

if [ -d /config/deemix ] && [ ! -d /config/addons_config/deemix ]; then
    echo "Moving to new location /config/addons_config/deemix"
    mkdir -p /config/addons_config/deemix
    chmod 777 /config/addons_config/deemix
    mv /config/deemix/* /config/addons_config/deemix/
    rm -r /config/deemix
fi

if [ ! -d /config/addons_config/deemix ]; then
    echo "Creating /config/addons_config/deemix"
    mkdir -p /config/addons_config/deemix
    chmod 777 /config/addons_config/deemix
fi
