#!/usr/bin/env sh
set -e

mkdir -p /data

echo $ZERO_REPLICA_FILE
echo "^replica file"
ZERO_UPSTREAM_DB="postgres://postgres:$POSTGRES_PASSWORD@zero-repro-postgres-local:5432/data" \
  ZERO_CVR_DB="postgres://postgres:$POSTGRES_PASSWORD@zero-repro-postgres-local-zero-cvr:5432/zero_cvr" \
  ZERO_CHANGE_DB="postgres://postgres:$POSTGRES_PASSWORD@zero-repro-postgres-local-zero-change:5432/zero_change" \
  zero-cache