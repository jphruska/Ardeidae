#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_astral_multilocus_bootstrapping
#$ -q omni
#$ -pe sm 10
#$ -P xlquanah
#$ -l h_vmem=12G
#$ -l h_rt=120:00:00

module load java 

java -Xmx12000M -jar /lustre/work/johruska/Astral/astral.5.6.3.jar -i ./inputgenetrees.tre -b ./bs-list.txt -g -r 100 -o ./heron_incomplete.bootstrapped.astral.tre
