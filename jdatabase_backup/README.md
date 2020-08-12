# Restoring JDATABASE

* Unzip the file
* create a user test with the root user (usually postgres) ```create user test with password 'test'```
* grant create db permissions ```ALTER ROLE test CREATEDB```
* Load psql ```psql -U test -d postgres -h localhost```
* create jdatabase ```CREATE database jdatabase owner test```
* switch to jdatabase if you aren't there already
* ```\i jdatabase_file```
* exit out and return to jdatabase and issue \dt+ to see the tables\q


Created by:

```sql
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 11.4
```
