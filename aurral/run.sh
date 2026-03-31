#!/bin/sh
set -e

echo "🔧 Linking addon_config to /app/backend/data..."

mkdir -p /app/backend/data

# Link HA’s config folder (mounted at /data) to the app’s expected data folder
rm -rf /app/backend/data
ln -s /data /app/backend/data

echo "✅ Data folder ready."

exec node /app/backend/server.js
