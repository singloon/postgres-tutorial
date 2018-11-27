FROM postgres:11.0
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD mysecretpassword
ENV POSTGRES_DB dvdrental
COPY init.sql /docker-entrypoint-initdb.d/
COPY backup.tar /var/lib/postgresql/backup/backup.tar