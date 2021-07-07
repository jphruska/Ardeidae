#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_match_contigs_to_probes
#$ -q omni
#$ -pe sm 20
#$ -P quanah
#$ -l h_vmem=6G


phyluce_assembly_match_contigs_to_probes --contigs ./spades_assemblies/contigs --probes ./uce-5k-probes.fasta --output ./match_contigs_to_probes --log-path ./match_contig_to_probes_log 
