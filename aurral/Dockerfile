FROM ghcr.io/lklynet/aurral:latest

# Copy your run script into the container
COPY run.sh /run.sh
RUN chmod +x /run.sh

# This ensures /data is available for HA mappings
VOLUME ["/data"]

# Home Assistant will override ENTRYPOINT with your command in config.json
