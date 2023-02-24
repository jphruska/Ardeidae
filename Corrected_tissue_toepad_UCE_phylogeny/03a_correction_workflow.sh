#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_correction_workflow
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=8
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G


source activate phyluce-1.7.1


phyluce_workflow --config ./correction.conf \
    --output ./correction_output \
    --workflow correction \
    --cores 1
