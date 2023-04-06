#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_get_fasta_match_counts_incomplete_no_toepads
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G


phyluce_assembly_get_fastas_from_match_counts \
    --contigs ./spades_assemblies/contigs \
    --locus-db ./match_contigs_to_probes/probe.matches.sqlite \
    --match-count-output ./ardeidae_no_toepads/ardeidae_incomplete/dataset2.incomplete.conf \
    --incomplete-matrix ./taxon-sets/dataset2/dataset2.incomplete \
    --output ./ardeidae_no_toepads/ardeidae_incomplete/dataset2.incomplete.fasta \
    --log-path ./ardeidae_no_toepads/ardeidae_complete/get_fasta_match_counts_log
