# REDMINE #

This project allows to run a Redmine server on a postgresql backend.

### What is this repository for? ###

* Run a Redmine server on a postgresql backend using docker-compose.
* Include easy-to-use tools to backup/restore the database and files.  

### How do I get set up? ###

* Install Docker CE : https://www.docker.com/community-edition
* Install docker-compose : https://docs.docker.com/compose/install/#prerequisites
* Configure passwords and host directory mapping with docker volumes: see env.template file
* Start redmine : `docker-compose up` or `docker-compose up -d` to run in background

### How do I access the application ###

* Redmine : http://localhost:8080/
* Adminer (former phpmyadmin) : http://localhost:8081/

### How do I clean up ###

Docker uses volumes to write directly on the host, those volumes will be kept (with all the important data in it), 
except if you explicitely remove them.

#### Cleanup ####

`docker-compose stop ; docker-compose rm -vf`

# TODO #

* Allows to define UID/GID of applications to make data accessible from the chosen linux user (on the host)
* Implement a container which dumps the postgresql database automatically without any interaction appart from running it (this could eventually run when everythin starts up so a backup would be done everytime you use the app, but in this case, the dump should be done before Redmine starts because Redmine automatically upgrades when starting)
* See how to include the backup on the postgresql startup to automatically load the dump (sounds useless if database container volume is not destroyed but makes it eaiser to restore in case any shit happens)

# Redmine on Postgres

## Backup the database

Quick and dirty command line :
```
docker exec -t postgresql_1 pg_dump --dbname redmine_db --username=redmine_user > redmine_db_dump_$(date +%y-%m-%d_%HH%M).sql
```
