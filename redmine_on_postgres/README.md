# Redmine on Postgres

## Backup the database

Quick and dirty command line :
```
docker exec -t postgresql_1 pg_dump --dbname redmine_db --username=redmine_user > redmine_db_dump_$(date +%y-%m-%d_%HH%M).sql
```
