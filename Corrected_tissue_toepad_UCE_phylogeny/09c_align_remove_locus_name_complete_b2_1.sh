#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_remove_locus_name_complete_b2_1
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G


phyluce_align_remove_locus_name_from_nexus_lines \
    --alignments ./complete/mafft-nexus-internal-trimmed-gblocks-b2-1 \
    --output ./complete/mafft-nexus-internal-trimmed-gblocks-b2-1-clean \
    --cores 12 \
    --log-path remove_locus_names_complete_b2_1_log
