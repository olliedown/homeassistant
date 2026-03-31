#!/usr/bin/env bash
set -e

echo "🔧 Preparing Aurral addon directories..."

# Ensure target exists or replace it safely
if [ -d "/app/backend/data" ] && [ ! -L "/app/backend/data" ]; then
    echo "⚠️  /app/backend/data exists as a normal directory, converting to symlink..."
    rm -rf /app/backend/data
fi

# Create parent path if missing
mkdir -p /app/backend

# Create symlink: /data → /app/backend/data
ln -sf /data /app/backend/data
echo "✅ Mapped /data to /app/backend/data"

# ---- Start your application ----
echo "🚀 Starting Aurral backend..."
cd /app/backend
exec node server.js
