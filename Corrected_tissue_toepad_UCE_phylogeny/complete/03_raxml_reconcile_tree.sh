#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_raxml_reconcile_complete
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

raxmlHPC-SSE3 \
    -m GTRGAMMA \
    -f b \
    -t RAxML_bestTree.best_complete \
    -z RAxML_bootstrap.bootreps_complete \
    -n reconcile_complete
