#!/usr/bin/env bash
set -e

echo "ln -s /app/backend /config"
ln -s /app/backend /config

echo "Starting"
exec node /app/backend/server.js
