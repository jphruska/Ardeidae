#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_assembly_array
#$ -q omni
#$ -pe sm 6
#$ -P xlquanah
#$ -l h_rt=120:00:00
#$ -l h_vmem=20G
#$ -t 1-59


phyluce_assembly_assemblo_spades --config ./Heron_assembly.conf --cores 20 --log-path ./spades_log --output ./spades_assemblies --subfolder split-adapter-quality-trimmed
