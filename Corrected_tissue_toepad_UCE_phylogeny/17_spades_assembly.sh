#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_spades_assembly_16
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=2
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=94G

phyluce_assembly_assemblo_spades --config assembly_16.conf --output ./spades_assemblies/16 --cores 2 --memory 94 --log-path assembly_16_log
