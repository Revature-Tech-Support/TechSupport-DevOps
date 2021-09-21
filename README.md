# TechSupport-DevOps
DevOps file store and requests.

Please create a new issue for any requests like resources (AWS servers, bugs, etc.) at your lesiure.
Also used to store files that are important to the overall structure and design of the project.

## Link to Endpoints
https://docs.google.com/document/d/1MY9RURsUfVchIRmpoyIUv432dqJWUXVImTPdfQw7jnM/edit?usp=sharing

## Setting up Cassandra
To run Cassandra locally, make sure to have Docker installed on your machine, then run the following command:

` docker run --rm --name cass -it -p 9042:9042 cassandra`

This creates a Docker container for the Cassandra instance. Following that command, use these two commands:

` docker cp PATH_GOES_HERE cass:/tmp/schema.cql `

` docker exec -it cass bash `

The former command copies your schema file into the container while the latter puts you into an interactive terminal with the Cassandra instance. After you have copied the schema file to your container, run the following commands:

` cd tmp `

` cqlsh -f schema.cql`

which will initialize your Cassandra database to have the correct keyspace and tables. After that, go into cqlsh and run:

` use <key_space>;`

` describes tables;` 

This should print all of the tables that are in that keyspace, proving that all of your tables were initialized correctly.
