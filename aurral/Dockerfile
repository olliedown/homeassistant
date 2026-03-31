
FROM ghcr.io/lklynet/aurral:latest

COPY run.sh /run.sh
RUN chmod +x /run.sh

# Override upstream entrypoint
ENTRYPOINT []

# Make backend directory a persistent volume
VOLUME ["/app/backend/data"]

# Default command
CMD ["/bin/sh", "/run.sh"]
