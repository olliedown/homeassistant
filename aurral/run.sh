#!/usr/bin/env bash
set -e

echo "Map Config Folder"
ln -sf /app/backend /config
ln -sf /app/backend /data

echo "Starting"
exec node /app/backend/server.js
