ARG BUILD_FROM
FROM ghcr.io/lklynet/aurral

# Copy our startup script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
