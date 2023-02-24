#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_align_gblocks_trim_complete_b2_1
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed \
    --alignments ./complete/mafft-nexus-internal-trimmed \
    --output ./complete/mafft-nexus-internal-trimmed-gblocks-b2-1 \
    --cores 12 \
    --b2 1 \
    --log ./get_gblocks_trimmed_alignments_from_untrimmed_complete_b2_1_log
