#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_get_fastas_from_match_counts_incomplete
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=8
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G


phyluce_assembly_get_fastas_from_match_counts \
    --contigs ./correction_output/consensus/ \
    --locus-db ./match_contigs_to_probes/probe.matches.sqlite \
    --match-count-output ./incomplete/dataset1.conf \
    --incomplete-matrix ./incomplete/datset1.incomplete \
    --output ./incomplete/incomplete.fasta \
    --log-path ./get_fastas_from_match_counts_incomplete_log \

