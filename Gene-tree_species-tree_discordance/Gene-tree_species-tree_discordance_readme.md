# Gene-tree_species-tree_discordance workflow

Please note that only one rooted gene tree is included in this directory (to serve as an example). If you would like access to the remaining rooted gene trees I would be happy to share. The unrooted gene trees for this same dataset are also included in the Dryad repository associated with the manuscript. Files associated with PhyParts analysis are stored in the 'incomplete' directory. Files are associated with the gene and site discordance are stored in the 'complete' and 'incomplete' directories, as appropriate. Alignments are not provided here (due to size limitations). If you would like them, please feel free to reach out to me at jackphruska@gmail.com. 

# Gene-tree discordance with PhyParts

01. Root species trees (using outgroups) with Phyx (pxrr function). 

`pxrr -t RAxML_bipartitions.reconcile_no_toepads_incomplete.tre -g pelecanus_occidentalis_B36816,balaeniceps_rex_B19208,plegadis_falcinellus_B41209 -o RAxML_reconcile_no_toepads.speciestree`


02. Rename gene trees (previously estimated in RAxML to as 1.tre, 2.tre, etc. This will allow you to run a loop through all of the gene trees and root them iteratively using pxrr. 

03. Run loop to root gene trees with pxrr, for example: 

`for i in seq 1 4773; do pxrr -t gene_trees/$i.tre -g pelecanus_occidentalis_B36816,balaeniceps_rex_B19208,plegadis_falcinellus_B41209 -o gene_trees/$i.tre ; done`

04. Migrate over rooted gene trees folder and species tree to high performance computing environment and carry out (01_phyparts.sh). 

05. Use phypartspiecharts.py (https://github.com/mossmatters/MJPythonNotebooks/blob/master/phypartspiecharts.py) to plot gene tree discordance as pie charts per node and generate figure akin to Figure 4 of the manuscript. 

# Gene and site discordance with IQTree

Workflow below carried out with IQTree v 2.1.3. Here, we quantified gene-concordance factors (gCF) and site-concordance factors (sCF) for each node of the trees. This was carried out on datasets 5 and 6a. 

## Incomplete dataset (no toepads)
1. Estimate species tree
` /usr/local/bin/iqtree-2.1-2.3-MacOSX/bin/iqtree2 -s mafft-nexus-internal-trimmed-gblocks-clean-75p.nexus -p mafft-nexus-internal-trimmed-gblocks-clean-75p.charsets.nexus --prefix concat -bb 1000 -nt AUTO`
2. Estimate gene trees
`/usr/local/bin/iqtree-2.1.3-MacOSX/bin/iqtree2 -s mafft-nexus-internal-trimmed-gblocks-clean-75p.nexus -S mafft-nexus-internal-trimmed-gblocks-clean-75p.charsets.nexus --prefix loci -nt 2`
3. Calculate site concordance and gene concordance factors
`/usr/local/bin/iqtree-2.1.3-MacOSX/bin/iqtree2 -t concat.treefile --gcf loci.treefile -s mafft-nexus-internal-trimmed-gblocks-clean-75p.nexus --scf 100 --prefix concord`
   
## Complete dataset (no toepads)
1. Estimate species tree
`/usr/local/bin/iqtree-2.1-2.3-MacOSX/bin/iqtree2 -s mafft-nexus-trimmed-gblocks-clean.nexus -p mafft-nexus-trimmed-gblocks-clean.charsets.nexus --prefix concat -bb 1000 -nt AUTO`
2. Estimate gene trees
`/usr/local/bin/iqtree-2.1.3-MacOSX/bin/iqtree2 -s mafft-nexus-trimmed-gblocks-clean.nexus -S mafft-nexus-trimmed-gblocks-clean.charsets.nexus --prefix loci -nt 2`
4. Calculate site concordance and gene concordance factors
`/usr/local/bin/iqtree-2.1.3-MacOSX/bin/iqtree2 -t concat.treefile --gcf loci.treefile -s mafft-nexus-trimmed-gblocks-clean.nexus --scf 100 --prefix concord`
