#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_align_clean_alignments_incomplete_no_toepads 
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G

phyluce_align_remove_locus_name_from_nexus_lines \
    --alignments ./ardeidae_no_toepads/ardeidae_incomplete/mafft-fasta-no-trim \
    --output ./ardeidae_no_toepads/ardeidae_incomplete/mafft-nexus-trimmed-gblocks-clean \
    --cores 20 \
    --log-path ./ardeidae_no_toepads/ardeidae_incomplete/clean_alignments_log
