#!/usr/bin/with-contenv bash

# Move existing data if needed
if [ ! -f /data/.migrated ]; then
  mkdir -p /data/aurral
  cp -r /app/backend/data/* /data/aurral/ 2>/dev/null || true
  touch /data/.migrated
fi

# Replace internal path with symlink
rm -rf /app/backend/data
ln -s /data/aurral /app/backend/data

# Start app
exec /init
