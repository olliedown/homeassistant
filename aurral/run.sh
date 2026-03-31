#!/bin/sh
set -e

echo "🔧 Linking addon_config to /app/backend/data..."

echo "✅ Data folder ready."

exec node /app/backend/server.js
