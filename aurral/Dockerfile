FROM ghcr.io/lklynet/aurral:latest

COPY run.sh /run.sh
RUN chmod +x /run.sh

# Important: override upstream entrypoint
ENTRYPOINT []

# Home Assistant will now execute:
# /bin/bash /run.sh
# because of your config.json "command" field
