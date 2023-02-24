#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_concatenate_incomplete_b2_1
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G


phyluce_align_concatenate_alignments \
    --alignments ./incomplete/mafft-nexus-internal-trimmed-gblocks-b2-1-clean-75p\
    --output ./incomplete/mafft-nexus-internal-trimmed-gblocks-b2-1-clean-75p-raxml \
    --phylip \
    --log-path ./align_concatenate_alignments_b2_1_incomplete
