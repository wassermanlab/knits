:param PFM_CSV => 'graph_data/gene_annotations/jaspar_TF_PFM.csv'
:param Family_Domain_CSV => 'graph_data/gene_annotations/jaspar_TF_Class_Family.csv'

:use isoformschemajune10

:begin
LOAD CSV WITH HEADERS FROM "file:///" + $PFM_CSV as line
match (prot:Protein)<-[:ENCODES]-(t:Transcript)<-[:ENCODES]-(g:Gene)
where t.ensembl_canonical_flag = '1' AND g.primary_seq = TRUE AND split(line.uniprot_ids, "|") IN prot.uniprot_swissprot_id
WITH g
CREATE (a:Annot {from:'Jaspar:' + line.collection, entry_url:line.url, id:line.jaspar_id, data_type:line.data_type, data_source:line.data_source, species:line.tax_group})
WITH g,a
UNWIND split(line.pubmed_ids,",") as pmid
MERGE (r:Resource {PMID:pmid})
MERGE (pfm:PFM {id:line.jaspar_id,a:line.A, c:line.C, g:line.G, T:line.T})
MERGE (g)-[:HAS_ANNOTATION]->(a)-[:ANNOTATED_TO]->(pfm)
MERGE (a)-[:BECAUSE]->(r)
;
LOAD CSV WITH HEADERS FROM "file:///" + $Family_Domain_CSV as line
match (prot:Protein)<-[:ENCODES]-(t:Transcript)<-[:ENCODES]-(g:Gene)
where t.ensembl_canonical_flag = '1' AND g.primary_seq = TRUE AND split(line.uniprot_ids, "|") IN prot.uniprot_swissprot_id
with g
CREATE (a:Annot {from:'Jaspar:' + line.collection, entry_url:line.url, id:line.jaspar_id, species:line.tax_group})
with g,a
UNWIND split(line.pubmed_ids,",") as pmid
MERGE (r:Resource {PMID:pmid})
//i only account for 1 family and 1 class
MERGE (f:Family {name:line.family})
MERGE (c:Class {name:line.class})
MERGE (g)-[:HAS_ANNOTATION]->(a)-[:ANNOTATED_TO]->(f)-[:IS_A]->(c)
MERGE (a)-[:BECAUSE]->(r)



:commit