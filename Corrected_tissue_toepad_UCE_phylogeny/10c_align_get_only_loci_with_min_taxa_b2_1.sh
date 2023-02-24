#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_get_loci_with_min_taxa_incomplete_b2_1
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

phyluce_align_get_only_loci_with_min_taxa \
    --alignments ./incomplete/mafft-nexus-internal-trimmed-gblocks-b2-1-clean\
    --taxa 58 \
    --percent 0.75 \
    --output ./incomplete/mafft-nexus-internal-trimmed-gblocks-b2-1-clean-75p \
    --cores 12 \
    --log-path ./get_loci_with_min_taxa_incomplete_b2_1
