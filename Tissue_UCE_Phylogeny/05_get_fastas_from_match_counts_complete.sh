#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_get_fasta_match_counts_complete_no_toepads
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G


phyluce_assembly_get_fastas_from_match_counts \
    --contigs ./spades_assemblies/contigs \
    --locus-db ./match_contigs_to_probes/probe.matches.sqlite \
    --match-count-output ./ardeidae_no_toepads/ardeidae_complete/dataset2.complete.conf \
    --output ./ardeidae_no_toepads/ardeidae_complete/dataset2.complete.fasta \
    --log-path ./ardeidae_no_toepads/ardeidae_complete/get_fasta_match_counts_log
