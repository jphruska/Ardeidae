# mtDNA assembly and phylogeny workflow

## mtDNA genome assembly

1. Make directories (per species) to store merged reads (01_merged_raw_read_directory_maker.sh). 
2. Merge reads with flash (02_flash.sh). 
3. Make directories (per species) to store mitobim output (03_mitobim_genome_directory_maker.sh)
4. Assemble mitogenomes (per species) with mitobim (04_mitobim.sh). 

## mtDNA genome phylogeny

1. Fasta files were imported into Geneious, wherein coding regions were annotated using a *Gorsachius magnificus* mitogenome reference (GenBank # KT364529). Only regions that had a 65 % or greater similarity to a coding region in the *G. magnificus* reference were extracted. Alignments for 13 coding regions were performed separately, and then concatenated into one resulting alignment. It was this alignment that was then used as input for phylogeny estimation with RAxML and BEAST. See associated Dryad repository for mtDNA alignments and .xml files. Phylogeny estimation was also carried with an alignment that excluded samples with less than 10x mtDNA genome coverage. 
