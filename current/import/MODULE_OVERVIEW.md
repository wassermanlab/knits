Import
===========

This module is responsible for gathering and mapping information to user-defined gene symbols.


Mapping Gene Symbols to TF
-------------
- Canonical Gene->Protein Relationships are chosen by canonical transcript status and primary sequence status in ensembl. These criteria yield a single gene->transcript->protein pathway for every protein in yamanaka graph.


Mapping Gene Symbols to Annotations:
--------------
- Protein associations and interaction attached to protein isoform. 
- All other annotation attached to gene encoding TF.

List Of Imported Data
--------------

- Gene->Protein Mappings (Ensembl)
- Protein-Protein Physical Association Network (BioGrid)
- Protein-Protein Functional Association Network (STRING)
- Gene->Chemical & Gene->Disease Association Network (CTDBase)

- DNA Binding Domain (JASPAR)
- Protein Domain Families (Pfam)

- TF Family Ontology (TFClass)
- Gene Function Ontology (Gene Ontology)
