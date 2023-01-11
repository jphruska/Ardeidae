# Heron (Aves:Ardeidae) phylogeny 

This repository documents the methodology of Hruska et al. 2023 (doi:#), where we estimated a molecular phylogeny of herons using ultraconserved elements (UCEs) sequenced from 58 species. In addition, we explore approaches that could ameliorate phylogenetic artifacts that are comonly introduced when using sequences from historical samples (e.g.,toepads), assess the robustness of the phylogeny in light of patterns of gene-tree discordance, and estimate rates of molecular evolution along branches of the phylogeny. This repository will be of use to anyone interested in carrying out phylogenetic analysis of UCEs, particularly if they are incorporating 'historical' samples.   

For inquiries regarding any of the analyses implemented in the manuscript, please don't hesitate to contact me at jackphruska@gmail.com

![Illustration of Reddish Egret (Egretta rufescens)](https://github.com/jphruska/Ardeidae/blob/master/reddish_egret.jpg)
Illustration of the Reddish Egret *Egretta rufescens* by Sarah MacLean. 

### Fastq trimming, cleaning, and contig assembly. 

### MtDNA assembly, aligning, and phylogenetic analysis. 

We assembled mtDNA sequences of most individuals (48 out of 58) using off-target (non-UCE) reads. Here we used MITObim, which employs the assembler MIRA. Sequences that had 65% or greater similarity to a Gorsachius magnificus assembly (GenBank # KT364529) were subsequently extracted and identified to one of 13 mtDNA coding regions. We then aligned each coding region separately with MAFFT, as implemented by Geneious. Individual coding region alignments were subsequently concatenated. This alignment was then used to estimate phylogenetic trees with RAxML (as implemented by Geneious) and BEAST. More details and scripts are provided in the **mtDNA_assembly_phylogeny** folder of this repository. 

### UCE extraction and alignment



