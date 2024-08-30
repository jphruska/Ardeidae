#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_align_gblocks_trim_incomplete_toepads_0.55
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G


phyluce_align_get_gblocks_trimmed_alignments_from_untrimmed \
    --alignments ./ardeidae_incomplete/mafft-no-trim \
    --output ./ardeidae_incomplete/mafft-no-trim-gblocks-trimmed-0.55 \
    --b2 0.55 \
    --log-path ./ardeidae_incomplete/gblocks_trim_0.55_log \
    --cores 20
  
