#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_raxml_bootreps_complete
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

raxmlHPC-PTHREADS-SSE3 \
    -m GTRGAMMA \
    -N autoMRE \
    -p 19878 \
    -b 7175 \
    -n bootreps_complete \
    -s ./mafft-nexus-internal-trimmed-gblocks-clean-raxml/mafft-nexus-internal-trimmed-gblocks-clean-raxml.phylip \
    -T 12
