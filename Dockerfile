FROM rocicorp/zero:0.19.2025050203

COPY --chown=node --chmod=755 start.sh /app/start.sh
COPY --chown=node litestream.yml /app/litestream.yml

ENTRYPOINT [ "/app/start.sh" ]