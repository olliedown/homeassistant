#!/usr/bin/env bash
set -e

echo "🔧 Preparing Aurral addon directories..."

# If /app/backend/data exists as a real directory, replace it with a symlink
if [ -d "/app/backend/data" ] && [ ! -L "/app/backend/data" ]; then
    echo "⚠️  Existing directory detected at /app/backend/data, replacing with symlink..."
    rm -rf /app/backend/data
fi

# Ensure parent directory exists
mkdir -p /app/backend

# Symlink HA's addon data folder into your app path
ln -sf /data /app/backend/data
echo "✅ Mapped /data → /app/backend/data"

echo "🚀 Starting app..."
# Start whatever the original container starts
# Most Node apps start with this:
exec node /app/backend/server.js
