#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_incomplete_prepare_for_raxml_no_toepads
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G

phyluce_align_format_nexus_files_for_raxml \
    --alignments ./ardeidae_no_toepads/ardeidae_incomplete/mafft-nexus-internal-trimmed-gblocks-clean-75p \
    --output ./ardeidae_no_toepads/ardeidae_incomplete/mafft-nexus-trimmed-gblocks-clean-75p-raxml \
    --charsets \
    --log-path ./ardeidae_no_toepads/ardeidae_incomplete/prepare_raxml_log


