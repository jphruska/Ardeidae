#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_concatenate_complete
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G


phyluce_align_concatenate_alignments \
    --alignments ./complete/mafft-nexus-internal-trimmed-gblocks-clean \
    --output ./complete/mafft-nexus-internal-trimmed-gblocks-clean-raxml \
    --phylip \
    --log-path ./align_concatenate_alignments_complete
