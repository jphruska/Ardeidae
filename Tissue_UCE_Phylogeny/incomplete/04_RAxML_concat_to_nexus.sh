#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_raxml_to_svdquartets
#$ -q omni
#$ -pe sm 6
#$ -P xlquanah
#$ -l h_vmem=20G

phyluce_align_convert_one_align_to_another \
    --alignments ./mafft-nexus-trimmed-gblocks-clean-75p-raxml/ \
    --output ./ardeidae_incomplete_svdq \
    --input-format phylip-relaxed \
    --output-format nexus \
    --cores 6 \
    --log-path ./logs 
