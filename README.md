### Postgres tutorial

## Docker build & run
1) `docker build -t dvdrental .`
2) `docker run -t --name dvdrental -p 5432:5432 dvdrental`

## Restore backup
1) `docker exec dvdrental sh -c "pg_restore -U postgres -d dvdrental /var/lib/postgresql/backup/backup.tar"`