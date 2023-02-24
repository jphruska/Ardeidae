#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_get_match_counts_incomplete
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=8
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G


phyluce_assembly_get_match_counts \
    --locus-db ./match_contigs_to_probes/probe.matches.sqlite \
    --taxon-list-config ./datasets.conf \
    --taxon-group 'dataset1' \
    --output ./incomplete/dataset1.conf \
    --log-path ./get_match_counts_incomplete_log \
    --incomplete-matrix
