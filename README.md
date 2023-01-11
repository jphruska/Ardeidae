# Heron (Aves:Ardeidae) phylogeny 

This repository documents the methodology of Hruska et al. 2023 (doi:#), where we estimated a molecular phylogeny of herons using ultraconserved elements (UCEs) sequenced from 58 species. In addition, we explore approaches that could ameliorate phylogenetic artifacts that are comonly introduced when using sequences from historical samples (e.g.,toepads), assess the robustness of the phylogeny in light of patterns of gene-tree discordance, and estimate rates of molecular evolution along branches of the phylogeny. This repository will be of use to anyone interested in carrying out phylogenetic analysis of UCEs, particularly if they are incorporating 'historical' samples.   

For inquiries regarding any of the analyses implemented in the manuscript, please don't hesitate to contact me at jackphruska@gmail.com

![Illustration of Reddish Egret (Egretta rufescens)](https://github.com/jphruska/Ardeidae/blob/master/reddish_egret.jpg)
Illustration of the Reddish Egret *Egretta rufescens* by Sarah MacLean. 

## Data

## Tissue UCE phylogeny. 
Initial analyses of the data revealed that toepad samples contained both substantially shorter and fewer UCEs, when compared to UCEs from tissue samples (See Supplemental Figures S9 and S10). As a result, we decided to estimate the UCE phylogeny with two matrices: the first containing only tissue samples and the other containing tissue and toepad samples. Below we demonstrate the workflow carried out for the matrix that contains only tissue samples. More details and scripts on the UCE workflow are provided in the **Tissue_UCE_phylogeny** folder of this repository. 

### Fastq trimming, cleaning, and contig assembly. 

## MtDNA assembly, aligning, and phylogenetic analysis. 

We assembled mtDNA sequences of most individuals (48 out of 58) using off-target (non-UCE) reads. This dataset included both tissue and toepad samples, and tissue type did not appear to have a discernible effect on mtDNA assembly. For example, we failed to recover good mtDNA assemblies for some tissue samples (e.g., Ardea herodias) and also recovered mtDNA assemblies for most toepad samples. Here we used MITObim, which employs the assembler MIRA. Sequences that had 65% or greater similarity to a Gorsachius magnificus assembly (GenBank # KT364529) were subsequently extracted and identified to one of 13 mtDNA coding regions. We then aligned each coding region separately with MAFFT, as implemented by Geneious. Individual coding region alignments were subsequently concatenated. This alignment was then used to estimate phylogenetic trees with RAxML (as implemented by Geneious) and BEAST. More details and scripts are provided in the **mtDNA_assembly_phylogeny** folder of this repository. 

### UCE extraction and alignment

## 
## Gene-tree species-tree discordance 

## Molecular Rate Variation Analysis


