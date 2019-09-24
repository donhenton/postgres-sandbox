# Restoring JDATABASE

* Unzip the file
* Load psql ```psql -U test -d postgres -h localhost```
* create jdatabase ```CREATE database jdatabase owner test```
* ```\i jdatabase_file```
