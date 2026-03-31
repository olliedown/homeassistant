#!/usr/bin/env sh

# Aurral exposes its frontend on port 3000 and backend on 3001 internally
echo "Starting Aurral..."
exec /usr/bin/dumb-init -- node server.js
