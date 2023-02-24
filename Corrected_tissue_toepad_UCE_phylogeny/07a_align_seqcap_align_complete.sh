#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_align_seqcap_align_complete
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

phyluce_align_seqcap_align \
    --fasta ./complete/complete.fasta \
    --output ./complete/mafft-nexus-internal-trimmed \
    --taxa 58 \
    --aligner mafft \
    --cores 12 \
    --output-format fasta \
    --no-trim \
    --log-path ./align_seqcap_align_complete_log

