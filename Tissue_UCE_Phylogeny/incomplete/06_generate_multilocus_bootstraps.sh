#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_generate_multilocus_bootstraps
#$ -q omni
#$ -pe sm 6
#$ -P xlquanah
#$ -l h_vmem=20G


phyluce_genetrees_generate_multilocus_bootstrap_count \
    --alignments ./ardeidae_75p_phylip \
    --bootstrap_replicates ardeidae_75p.bootstrap.replicates \
    --bootstrap_counts ardeidae_75p.bootstrap.counts \
    --directory ./ardeidae_75p_phylip \
    --bootreps 500 \
    --log-path logs 
