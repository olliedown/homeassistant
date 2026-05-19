#!/usr/bin/with-contenv bash

echo "Starting Aurral with persistent storage..."

# Ensure persistent folder
mkdir -p /data/aurral

# One-time migration
if [ ! -f /data/aurral/.migrated ]; then
  echo "Migrating existing data..."
  cp -r /app/backend/data/* /data/aurral/ 2>/dev/null || true
  touch /data/aurral/.migrated
fi

# Replace internal storage path
rm -rf /app/backend/data
ln -s /data/aurral /app/backend/data

echo "Mapped /app/backend/data → /data/aurral"

# Start original process
exec /init
``
