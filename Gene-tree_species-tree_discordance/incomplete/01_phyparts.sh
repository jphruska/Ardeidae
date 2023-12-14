#!/bin/bash
#SBATCH --chdir=./
#SBATCH --job-nam=phyparts
#SBATCH --partition quanah
#SBATCH --nodes=1 --ntasks=1
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=188G

java -Xmx188G -jar /lustre/work/johruska/phyparts/target/phyparts-0.0.1-SNAPSHOT-jar-with-dependencies.jar -a 1 -d ./rooted_gene_trees/ -m RAxML_reconcile_no_toepads.speciestree -o gene_tree_species_conflict -v 
