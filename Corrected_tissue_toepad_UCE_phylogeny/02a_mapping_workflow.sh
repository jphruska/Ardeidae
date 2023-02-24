#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_mapping_workflow
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=8
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G


phyluce_workflow --config ./mapping.conf \
    --output ./mapping_output \
    --workflow mapping \
    --cores 1
