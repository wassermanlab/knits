KNITS - Knowledge Networks Informing Transcriptional Studies
====================
[Description](https://github.com/wassermanlab/knits/edit/main/README.md#description) </br>
[Project Structure](https://github.com/wassermanlab/knits/edit/main/README.md#structure) </br>
[References](https://github.com/wassermanlab/knits/edit/main/README.md#references)

Description
--------------
The KNITS project facilitates quick and comprehensive TF comparisons that consider multiple types/sources of data.
It does this by:
- Unifying Transcription Factor (TF) Annotations from high-value sources into a human and machine-readable Neo4j Graph Database
- Using the structure of the graph database to develop pairwise TF similarity scores. This provides an automated and quantitative measure of similarity between any 2 TFs.

[Back to Top](https://github.com/wassermanlab/knits/edit/main/README.md#knits---knowledge-networks-informing-transcriptional-studies)

Structure
-------------

```bash
├── archived    #old data files and scripts, not used in current graph model
│   ├── biogrid_example_scripts
│   └── exampleDataset
├── current     #current working build of database
│   ├── construction   #scripts for constructing and populating new neo4j database instance
│   │   ├── __pycache__
│   │   ├── config                  #neo4j database instance URI/Username/Passkey and links raw github datafiles
│   │   ├── core                    #Code to parse YML file in construction/config
│   │   │   └── __pycache__
│   │   └── cypher_scripts          #scripting for reformatting raw data to graph schema
│   │       └── GO
│   ├── data           #store of all data flowing in from outside databases and out to the graph database
│   │   ├── entities                #gene, transcript, protein data
│   │   ├── gene_annotations        #transcription factor annotation data
│   │   │   └── cis-bp
│   │   └── protein_interactions    #protein interaction data
│   ├── doc     #notes on learnings and descisions made during work on project
│   ├── analysis   #code and other instructions for computing pairwise similarity scores
│   └── import         #scripts for ingesting remote data into local csv files
│       ├── __pycache__
│       ├── config              #URL and passkeys needed to interact w various biological databases
│       └── core                #code to parse config YML file
│           └── __pycache__
└── images
 ```

Schema:

![image](https://user-images.githubusercontent.com/95512439/186757601-b40952a7-33a6-447f-8631-3ec7835d2f6b.png)

[Further Reading](https://github.com/wassermanlab/knits/tree/main/current#module-functionality--data-flow)

[Back to Top](https://github.com/wassermanlab/knits/edit/main/README.md#knits---knowledge-networks-informing-transcriptional-studies)

References
-----------
- Oughtred, R., Rust, J., Chang, C., Breitkreutz, B.-J., Stark, C., Willems, A., Boucher, L., Leung, G., Kolas, N., Zhang, F., Dolma, S., Coulombe-Huntington, J., Chatr-Aryamontri, A., Dolinski, K., &amp; Tyers, M. (2021, January). The biogrid database: A comprehensive biomedical resource of curated protein, genetic, and chemical interactions. Protein science : a publication of the Protein Society. Retrieved August 10, 2022, from https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7737760/ 
- Castro-Mondragon JA, Riudavets-Puig R, Rauluseviciute I, Berhanu Lemma R, Turchi L, Blanc-Mathieu R, Lucas J, Boddie P, Khan A, Manosalva Pérez N, Fornes O, Leung TY, Aguirre A, Hammal F, Schmelter D, Baranasic D, Ballester B, Sandelin A, Lenhard B, Vandepoele K, Wasserman WW, Parcy F, and Mathelier A JASPAR 2022: the 9th release of the open-access database of transcription factor binding profiles Nucleic Acids Res. 2022 Jan 7;50(D1):D165-D173.; doi: 10.1093/nar/gkab1113
- Davis AP, Grondin CJ, Johnson RJ, Sciaky D, Wiegers J, Wiegers TC, Mattingly CJ The Comparative Toxicogenomics Database: update 2021. Nucleic Acids Res. 2020 Oct 17.
- Pfam: The protein families database in 2021: J. Mistry, S. Chuguransky, L. Williams, M. Qureshi, G.A. Salazar, E.L.L. Sonnhammer, S.C.E. Tosatto, L. Paladin, S. Raj, L.J. Richardson, R.D. Finn, A. Bateman
- Fiona Cunningham , James E. Allen, Jamie Allen, Jorge Alvarez-Jarreta, M. Ridwan Amode, Irina M. Armean , Olanrewaju Austine-Orimoloye, Andrey G. Azov, If Barnes, Ruth Bennett, Andrew Berry, Jyothish Bhai, Alexandra Bignell, Konstantinos Billis , Sanjay Boddu, Lucy Brooks, Mehrnaz Charkhchi, Carla Cummins , Luca Da Rin Fioretto, Claire Davidson, Kamalkumar Dodiya, Sarah Donaldson, Bilal El Houdaigui, Tamara El Naboulsi, Reham Fatima, Carlos Garcia Giron , Thiago Genez, Jose Gonzalez Martinez, Cristina Guijarro-Clarke, Arthur Gymer, Matthew Hardy, Zoe Hollis, Thibaut Hourlier , Toby Hunt, Thomas Juettemann , Vinay Kaikala, Mike Kay, Ilias Lavidas, Tuan Le, Diana Lemos, José Carlos Marugán, Shamika Mohanan, Aleena Mushtaq, Marc Naven, Denye N. Ogeh, Anne Parker, Andrew Parton, Malcolm Perry, Ivana Piliˇzota, Irina Prosovetskaia, Manoj Pandian Sakthivel, Ahamed Imran Abdul Salam, Bianca M. Schmitt, Helen Schuilenburg, Dan Sheppard, José G. Pérez-Silva, William Stark, Emily Steed, Kyösti Sutinen, Ranjit Sukumaran, Dulika Sumathipala, Marie-Marthe Suner, Michal Szpak, Anja Thormann, Francesca Floriana Tricomi, David Urbina-G ́omez, Andres Veidenberg, Thomas A. Walsh, Brandon Walts, Natalie Willhoft, Andrea Winterbottom, Elizabeth Wass, Marc Chakiachvili, Bethany Flint, Adam Frankish , Stefano Giorgetti, Leanne Haggerty, Sarah E. Hunt , Garth R. IIsley, Jane E. Loveland , Fergal J. Martin , Benjamin Moore, Jonathan M. Mudge, Matthieu Muffato, Emily Perry , Magali Ruffier , John Tate, David Thybert, Stephen J. Trevanion, Sarah Dyer, Peter W. Harrison , Kevin L. Howe , Andrew D. Yates , Daniel R. Zerbino and Paul Flicek Ensembl 2022. Nucleic Acids Res. 2022, vol. 50(1):D988-D995 PubMed PMID: 34791404. doi:10.1093/nar/gkab1049
- Szklarczyk D*, Gable AL*, Nastou KC, Lyon D, Kirsch R, Pyysalo S, Doncheva NT, Legeay M, Fang T, Bork P‡, Jensen LJ‡, von Mering C‡. The STRING database in 2021: customizable protein–protein networks, and functional characterization of user-uploaded gene/measurement sets . Nucleic Acids Res. 2021 Jan 8;49(D1):D605-12.PubMed
- Ashburner et al. Gene ontology: tool for the unification of biology. Nat Genet. May 2000;25(1):25-9. [abstract | full text]
- The Gene Ontology resource: enriching a GOld mine. Nucleic Acids Res. Jan 2021;49(D1):D325-D334. [abstract | full text]
- UCSC Genome Browser: Kent WJ, Sugnet CW, Furey TS, Roskin KM, Pringle TH, Zahler AM, Haussler D. The human genome browser at UCSC. Genome Res. 2002 Jun;12(6):996-1006. 

[Back to Top](https://github.com/wassermanlab/knits/edit/main/README.md#knits---knowledge-networks-informing-transcriptional-studies)
