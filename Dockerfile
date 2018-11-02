FROM postgres:11.0
COPY backup.tar /var/lib/postgresql/backup/backup.tar
