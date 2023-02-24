#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_raxml_reconcile_incomplete
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=12
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

raxmlHPC-SSE3 \
    -m GTRGAMMA \
    -f b \
    -t RAxML_bestTree.best_incomplete \
    -z RAxML_bootstrap.bootreps_incomplete \
    -n reconcile_incomplete
