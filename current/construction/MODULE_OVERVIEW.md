`current/construction`
=============

Module responsible for constructing knowledge graph instance using data stored online in `current/data`

Structure
-----------

- `current/construction/config` </br>

Configuration file folder.

Stores public URLs which reference data stored in `current/data` and credentials associated with user's neo4j database instance.

- `current/construction/cypher_scripts` </br>

Import Scripting folder

Scripting written in Cypher QL. Used to reformat data stored in `current/data` into a form suitable for the KNITS knowledge graph. Each script is associated with a particular CSV file stored in `current/data`.

- `current/construction/Data_importer.py` </br>

Defines `Entity_Importer` and `Annotation_Importer` classes. These classes store methods for writing data to neo4j database instance using cypher scripting. Cypher scripts are formatted with the proper data reference URL before execution.

- `current/construction/Graph_Loader.py` </br>

Defines `Graph_Loader` class.

`Graph_Loader` stores one `Annotation_Importer` object and one `Entity_Importer` object. `Graph_Loader` also stores neo4j credentials needed to execute transactions.

Responsible for interacting with the database instance. Its two main methods, `load_entities` and `load_annotations` execute database WRITE transactions in the proper sequence needed to construct a graph instance. 

- `current/construction/main.py` </br>

Main method. Running will delete all data in referenced database and construct a new KNITS instance. 
