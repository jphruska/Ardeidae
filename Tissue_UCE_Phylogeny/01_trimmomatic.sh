#!/bin/sh
#SBATCH --chdir=./
#SBATCH --job-nam=ardeidae_trimmomatic
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=8
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=10G

conda activate phyluce-1.7.1

illumiprocessor \
	--input /lustre/scratch/johruska/ardeidae/raw \
	--output /lustre/scratch/johruska/ardeidae/clean-fastq \
	--config ./heron_illumiprocessor.conf \
	--cores 8 \
	--r1-pattern _R1_001 \
	--r2-pattern _R1_002 \
	--trimmomatic /lustre/work/johruska/miniconda2/bin/trimmomatic
