FROM rocicorp/zero:0.19.2025050203

COPY --chown=node --chmod=755 start.sh /app/start.sh

ENTRYPOINT [ "/app/start.sh" ]