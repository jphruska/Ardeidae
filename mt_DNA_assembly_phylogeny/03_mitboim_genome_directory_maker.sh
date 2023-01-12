#!/bin/bash

for i in ls *R1_001.fastq.gz ; 
do 
	tmp=$(echo "$i" | awk -F '_' '{print $1"_"$2}')
	newname=${tmp}
	cd ./genomes 
	mkdir $newname
	cd ../
done
