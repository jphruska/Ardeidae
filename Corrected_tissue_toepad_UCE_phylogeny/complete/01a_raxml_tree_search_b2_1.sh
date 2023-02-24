#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_raxml_tree_search_complete_b2_1
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

raxmlHPC-PTHREADS-SSE3 \
    -m GTRGAMMA \
    -N 20 \
    -p 19878 \
    -n best_complete_b2_1 \
    -s ./mafft-nexus-internal-trimmed-gblocks-b2-1-clean-raxml/mafft-nexus-internal-trimmed-gblocks-b2-1-clean-raxml.phylip \
    -T 12
