# Neo4j sample database : Tokyo railway routes (in Japanese)

## About

* A Sample database for shortest path queries or trip planning queries using Neo4j.
* Japanese train routes near Tokyo.
* Relationships between two near stations by walk are added.
* 1793 nodes and 4301 relationships.

## Instalation (when using Neo4j desktop)

* Create empty database.
* Place two csv files to Neo4j import folder.
  * Import folder can be found in Neo4j Desktop ->select database->Manage->Open Folder.
* Execute load command in load.cypher in Neo4j Browser.

## Remark

* "Cost" attribute in relationships is "aproximate" time taken in minutes. This is not correct train schedules.
* "Category" attirbute in nodes is for debugging trip planning query, and values are random(meaningless).