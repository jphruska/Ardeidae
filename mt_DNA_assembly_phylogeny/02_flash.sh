#!/bin/bash
for i in ls *R1_001.fastq.gz ;
do 
	tmp=$(echo "$i" | awk -F '_' '{print $1"_"$2}')
	newname=${tmp}
	flash ./$newname*R1_001.fastq.gz ./$newname*R2_001.fastq.gz -z -d ./merged_raw_data/$newname &> ./merged_raw_data/$newname/flash.log
done
