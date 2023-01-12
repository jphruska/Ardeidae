## mtDNA assembly and phylogeny workflow

# mtDNA genome assembly

1. Make directories (per species) to store merged reads (01_merged_raw_read_directory_maker.sh). 
2. Merge reads with flash (02_flash.sh). 
3. Make directories (per species) to store mitobim output (03_mitobim_genome_directory_maker.sh)
4. Assemble mitogenomes (per species) with mitobim (04_mitobim.sh). 

# mtDNA genome phylogeny
