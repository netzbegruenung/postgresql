FROM postgres:18-alpine

RUN apk add --no-cache pgbackrest ca-certificates tzdata \
  && mkdir -p /var/log/pgbackrest /var/lib/pgbackrest /var/spool/pgbackrest \
  && chown -R postgres:postgres /var/log/pgbackrest /var/lib/pgbackrest /var/spool/pgbackrest
