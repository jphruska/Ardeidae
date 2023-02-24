#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_correction_workflow
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=8
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G


source activate phyluce-1.7.1


phyluce_assembly_match_contigs_to_probes --contigs ./correction_output/consensus --probes ./uce-5k-probes.fasta --output ./match_contigs_to_probes --log-path ./match_contig_to_probes_log 

