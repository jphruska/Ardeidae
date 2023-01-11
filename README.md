# Heron(Aves:Ardeidae) phylogeny 

This repository documents the methodology of Hruska et al. 2023 (doi:#), where a molecular phylogeny using ultraconserved elements (UCEs) 

### Fastq trimming, cleaning, and assembly. 

### MtDNA assembly, aligning, and phylogenetic analysis. 

We assembled mtDNA sequences of most individuals (48 out of 58) using off-target (non-UCE) reads. Here we used MITObim, which employs the assembler MIRA. Sequences that had 65% or greater similarity to a Gorsachius magnificus assembly (GenBank # KT364529) were subsequently extracted and identified to one of 13 mtDNA coding regions. We then aligned each coding region separately in Geneious, which implements MAFFT. Individual coding region alignments were subsequently concatenated. This alignment was then used to estimate phylogenetic trees with RAxML (as implemented by Geneious) and BEAST. 



