#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_align_get_loci_min_taxa_no_toepads
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G


phyluce_align_get_only_loci_with_min_taxa \
    --alignments ./ardeidae_no_toepads/ardeidae_incomplete/mafft-nexus-trimmed-gblocks-clean \
    --taxa 49 \
    --percent 0.75 \
    --output ./ardeidae_no_toepads/ardeidae_incomplete/mafft-nexus-internal-trimmed-gblocks-clean-75p \
    --cores 20 \
    --log-path ./ardeidae_no_toepads/ardeidae_incomplete/get_loci_min_taxa_log
