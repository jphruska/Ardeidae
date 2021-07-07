#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_raxml_test_incomplete_bootstrap_no_toepads
#$ -q omni
#$ -pe sm 6
#$ -P xlquanah
#$ -l h_vmem=20G


raxmlHPC-PTHREADS-SSE3 \
    -m GTRGAMMA \
    -N autoMRE \
    -p 19877 \
    -b 7175 \
    -n bootreps_no_toepads \
    -s ./mafft-nexus-trimmed-gblocks-clean-75p-raxml/mafft-nexus-internal-trimmed-gblocks-clean-75p.phylip \
    -T 6
