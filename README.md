### Postgres tutorial

## Docker build & run
1) `docker build -t dvd .`
2) `docker run --name dvd -e POSTGRES_PASSWORD=mysecretpassword -d dvd`

## Restore backup
### psql
1) `docker run -it --rm --link dvd:postgres postgres psql -h postgres -U postgres`
2) `CREATE DATABASE dvdrental;`
`CREATE DATABASE pagila;`
`USE DATABASE dvdrental;`
`DROP SCHEMA public CASCADE;`
`\q`

3) `docker exec dvd sh -c "pg_restore -U postgres -C -d dvdrental /var/lib/postgresql/backup/backup.tar"`
