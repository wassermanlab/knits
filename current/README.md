Project Structure
================

1. [Project Structure Overview](https://github.com/wassermanlab/knits/blob/main/current/README.md#module-functionality--data-flow-modulefunctiondataflow)
3. [Creating A Knowledge Graph - Step by step](https://github.com/wassermanlab/knits/blob/main/current/README.md#graph-construction-example---yamanaka-tfs)

Module Functionality & Data Flow
----------
Code for creation of KG is divided into three modules. These modules are meant to be executed in the following order: Import, Data, Construction.

**Import**

Uses user-defined gene symbols to query existing data repositories for annotation information. Parses, formats, and writes response to Data module, formatted as a series of CSV files.

[Further Reading](import/MODULE_OVERVIEW.md)

**Data**

Acts as a temporary data repository for imported data. Written by Import module. Read by Construction module. Data module is organized into three categories: Entities, Gene Annotations, & Protein Interactions. 

Entities folder stores information about Genes and Gene Products. Gene Annotations stores annotation data assigned to each inputted Gene Symbol. Protein Interactions stores interactions & associations between various gene products.

_Data must first be pushed to public github repo before becoming available for construction._

[Further Reading](data/MODULE_OVERVIEW.md)

**Construction**

Code and cypher scripting for constructing neo4j graph instance from data stored in Data module. 

Data Importer module uses public URLs stored in config.yml file for data references.

[Further Reading](construction/MODULE_OVERVIEW.md)

[Back to Top](https://github.com/wassermanlab/knits/blob/main/current/README.md#project-structure)

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

[Back to Top](https://github.com/wassermanlab/knits/blob/main/current/README.md#project-structure)

