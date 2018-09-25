FROM vault:0.11.1
COPY start-server.sh vault-config.sh /
ENV PORT=8080
ENTRYPOINT []
CMD ./start-server.sh
