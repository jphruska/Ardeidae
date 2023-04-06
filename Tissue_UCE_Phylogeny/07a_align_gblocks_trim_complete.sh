#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_align_glbocks_trim_complete_no_toepads
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G


phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed \
    --alignments ./ardeidae_no_toepads/ardeidae_complete/mafft-fasta-no-trim \
    --output ./ardeidae_no_toepads/ardeidae_complete/mafft-fasta-gblocks-trimmed \
    --b2 0.65 \
    --log-path ./ardeidae_no_toepads/ardeidae_complete/gblocks_trim_log \
    --cores 20
