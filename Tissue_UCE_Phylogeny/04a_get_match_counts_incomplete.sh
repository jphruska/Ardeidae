#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_get_match_counts_incomplete_no_toepads
#$ -q omni
#$ -pe sm 20
#$ -P xlquanah
#$ -l h_vmem=6G


phyluce_assembly_get_match_counts /
    --locus-db ./match_contigs_to_probes/probe.matches.sqlite \
    --taxon-list-config ./dataset2.conf \
    --taxon-group 'dataset2' \
    --output ./taxon-sets/dataset2/dataset2.incomplete.conf \
    --log-path ./ardeidae_no_toepads/ardeidae_incomplete/get_match_counts_log \
    --incomplete-matrix
