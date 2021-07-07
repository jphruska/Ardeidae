#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_align_no_trim_no_toepads_complete
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G

phyluce_align_seqcap_align \
    --fasta ./ardeidae_no_toepads/ardeidae_complete/dataset2.complete.fasta \
    --output ./ardeidae_no_toepads/ardeidae_complete/mafft-nexus-no-trim \
    --taxa 49 \
    --aligner mafft \
    --cores 20 \
    --no-trim \
    --log-path ./ardeidae_no_toepads/ardeidae_complete/align_no_trim_log \
    --output-format fasta \
