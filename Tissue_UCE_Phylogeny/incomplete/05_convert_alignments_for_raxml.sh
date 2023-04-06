#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_convert_for_raxml
#$ -q omni
#$ -pe sm 6
#$ -P quanah
#$ -l h_vmem=20G


phyluce_align_convert_one_align_to_another \
    --alignments ./mafft-nexus-internal-trimmed-gblocks-clean-75p \
    --output ./ardeidae_75p_phylip \
    --input-format nexus \
    --output-format phylip-relaxed \
    --cores 6 \
    --log-path logs 
