#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_raxml_test_incomplete_reconcile_no_toepads 
#$ -q omni
#$ -pe sm 6
#$ -P quanah
#$ -l h_vmem=20G

raxmlHPC-SSE3 \
    -m GTRGAMMA \
    -f b \
    -t RAxML_bestTree.best_no_toepads \
    -z RAxML_bootstrap.bootreps_no_toepads \
    -n reconcile_no_toepads_incomplete
