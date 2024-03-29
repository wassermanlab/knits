//:param ALTSEQMAPPING=>'yamanaka_alt_seq_mapping.csv'
LOAD CSV WITH HEADERS
	FROM '$ALT_SEQ' as line
MATCH (g:Gene {ensembl_id:line.Gene_Stable_ID})
SET g.primary_seq_flag=toBoolean(line.Primary_Seq)
with g
MATCH (primary:Gene {primary_seq_flag:TRUE})
MATCH (alternate:Gene {primary_seq_flag:FALSE})
RETURN count(DISTINCT primary) as primary, count(DISTINCT alternate) as alternate
;