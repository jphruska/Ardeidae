#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_raxml_complete_internal_trim_gblocks_no_toepads
#$ -q omni
#$ -pe sm 6
#$ -P quanah
#$ -l h_vmem=20G


raxmlHPC-PTHREADS-SSE3 \
    -m GTRGAMMA \
    -N 20 \
    -p 19877 \
    -n best_no_toepads \
    -s ./mafft-nexus-trimmed-gblocks-clean-raxml/mafft-nexus-trimmed-gblocks-clean.phylip \
    -T 6
