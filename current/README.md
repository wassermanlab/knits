Project Structure
================

1. Module functionality & data flow
2. Example - Yamanaka TF Graph

Module Functionality & Data Flow
----------
Code for creation of KG is divided into three modules. These modules are meant to be executed in the following order: Import, Data, Construction.

**Import**

Queries outside databases for annotatation information and parses response. Writes data to Data module, formatted as a series of CSV files.

**Data**

Acts as a temporary data repository for imported data. Written to by Import module. Read by Construction module. Data module is organized into three categories: Entities, Gene Annotations, & Protein Interactions. 

Entities folder stores information about Genes and Gene Products. Gene Annotations stores annotation data assigned to each inputted Gene Symbol. Protein Interactions stores interactions & associations between various gene products.

**Construction**

Code and cypher scripting for constructing neo4j graph instance from data stored in Data module. Data must first be pushed to public github repo before becoming available for construction.

Data Importer module uses public URLs stored in config,yml file for data references. 

Graph Construction Example - Yamanaka TFs
---------
1. Choose some number of human TFs. Assemble list of gene symbols encoding these TFs
2. `current/import/scripting/config/config.yml`: Paste list of gene symbols into `gene_names` parameter.
![image](https://user-images.githubusercontent.com/95512439/186543871-57dd7271-13bf-4871-ad9d-cd420ddeaa82.png)
3. `current/import/scripting/main.py`: Uncomment desired sources of annotations. Run `main.py`. 
![image](https://user-images.githubusercontent.com/95512439/186546230-361f95af-7bfb-4ba8-b28d-cdfe999d2717.png)
4. Commit all changes in `current/data` to Github.
5. Create Neo4j account and generate a blank graph. Start database.
6. `current/construction/config/config.yml`: change auradb uri, username, and password parameters to match your own database instance.
7. `current/construction/main.py`:run file, populating your database with the knowledge graph. 

