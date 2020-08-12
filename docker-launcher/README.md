# POSTGRES DOCKER IMAGE FOR ADVENTUREWORKS

running the docker-compose command ```docker-compose up -d```




This instance uses passwords, the passwords will have to be specified

## Pgadmin application
* browser based: http://localhost:5050
* connections need the ip assigned to the box, NOT localhost. You can get that ip using
the mac control panel --> network



* connecting: ```psql -h localhost -U postgres``` password is 'postgres'
* restore command: ```pg_restore --host "localhost" -U postgres -d northwind --verbose ./northwind.tar```

## list adventureworks schema/tables

* ```\dt *.*```
* ```\dt humanresources.*```
