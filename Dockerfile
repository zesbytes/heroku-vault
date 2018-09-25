FROM vault:0.11.1
COPY docker-entrypoint.sh vault-config.sh /
ENV PORT=8080
ENTRYPOINT []
CMD ./docker-entrypoint.sh
