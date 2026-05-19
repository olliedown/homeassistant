ARG BUILD_FROM
FROM $BUILD_FROM

# Copy our startup script
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
