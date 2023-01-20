# Gene-tree_species-tree_discordance workflow


# Gene-tree discordance with PhyParts

01. Root species trees (using outgroups) with Phyx (pxrr function). 

`pxrr -t RAxML_bipartitions.reconcile_no_toepads_incomplete.tre -g pelecanus_occidentalis_B36816,balaeniceps_rex_B19208,plegadis_falcinellus_B41209 -o RAxML_reconcile_no_toepads.speciestree`


02. Rename gene trees (previously estimated in RAxML to as 1.tre, 2.tre, etc. This will allow you to run a loop through all of the gene trees and root them iteratively using pxrr. 

03. Run loop to root gene trees with pxrr, for example: 

`for i in `seq 1 4773`; do pxrr -t gene_trees/$i.tre -g pelecanus_occidentalis_B36816,balaeniceps_rex_B19208,plegadis_falcinellus_B41209 -o gene_trees/$i.tre ; done`

04. Migrate over rooted gene trees folder and species tree to high performance computing environment and carry out (01_phyparts.sh). 

# Gene and site discordance with IQTree
1. 
