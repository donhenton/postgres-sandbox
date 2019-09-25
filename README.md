# POSTGRES-SANDBOX

Learning about postgres and various postgres things via Udemy

## Useful Commands At The Command Line

These commands used the docker instance sameersbn/postgresql9.6-2 with a user of test password test and a
a preexisting database of 'jdatabase'. Password checking is turned off.

### Run a File

* ```psql -h localhost -d jdatabase -U <user> -p <port> -a -w -f test.sql```
* ```psql -h localhost -d jdatabase -U test -p 5432 -a -w -f test.sql``` a is 'echo all' w is force password prompt

## Useful Command In A Session

* <http://www.postgresqltutorial.com/postgresql-cheat-sheet/>
* <https://github.com/lorint/AdventureWorks-for-Postgres>
* initialize psql ```psql -U test -h localhost -d jdatabase```
* quit ```\q```
* login as superuser ```psql -U postgres -h localhost```
* list databases ```\l```
* list users ```\du+```
* switch databases ```\c <database>```
* list tables ```\dt+```
* run an external sql file ```\i <filename.sql>```
* create a user -- see createuser.sql

## Restore from Udemy tar files

* create the database from the tar file name (northwind.tar -> 'northwind')
* ```CREATE DATABASE dbname OWNER <rolename>;``` (used user 'test' in this case)
* ```pg_restore -d northwind -U test -h localhost -C northwind.tar```


## Postgres Tutorial

<http://www.postgresqltutorial.com/postgresql-sample-database/>
