Import
===========

This module is responsible for gathering and mapping information to user-defined gene symbols.

Structure
------------
Code in `current/import/scripting` accesses outside database information and writes response to `current/data/*`. `current/import/scripting/config/config.yml` provides URL endpoints and user-defined gene symbols for querying appropriate databases. `current/import/scripting/main.py` calls all scripts to get data. `current/import/scripting/fetch_endpoint.py` provides a generic class for calling REST API.


Mapping Logic
-------------

**Gene Symbols -> TF Information**
- Canonical Gene->Protein Relationships are chosen by canonical transcript status and primary sequence status in ensembl. These criteria yield a single gene->transcript->protein pathway for every protein in yamanaka graph.


**Gene Symbols->Annotations**
- Protein associations and interaction attached to protein isoform. 
- All other annotation attached to gene encoding TF.

Queried Databases
--------------

- Ensembl: Gene->Protein Mappings
- BioGrid: Protein-Protein Physical Association Network
- STRING: Protein-Protein Functional Association Network
- CTDBase: Gene->Chemical & Gene->Disease Association Network (CTDBase)

- JASPAR: DNA Binding Domain (JASPAR)
- PFam: Protein Domain Families (Pfam)

- TFClass: TF Family Ontology (TFClass)
- Gene Ontology: Gene Function
