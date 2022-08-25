`current/data`
========
Used as temporary repository of consolidated data before it is ingested into graph database.

Structure
-------------
- `current/data/entities`

Stores gene->transcript->protein mappings generated from ensembl. 

- `current/data/gene_annotations`

Stores gene->annotation mappings gathered from various outside databases.

These databases are:
- Pfam
- CTDBase
- JASPAR
- TFClass

- `current/data/protein_interactions`

stores protein->annotation mappings gathered from various outside databases

These databases are:
- STRING
- BioGrid
