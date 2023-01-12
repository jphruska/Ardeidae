#!/bin/bash
for i in ls *R1_001.fastq.gz ;
do 
	tmp=$(echo "$i" | awk -F '_' '{print $1"_"$2}')
	newname=${tmp}
	cd /Volumes/HD-LXU3/Spring_2019_TTU_cluster/Ardeidae/Ardeidae_reanalysis/raw/genomes/$newname
	/usr/local/bin/MITObim/MITObim.pl --quick /Volumes/HD-LXU3/Spring_2019_TTU_cluster/Ardeidae/Ardeidae_reanalysis/raw/KT364531.fasta -readpool /Volumes/HD-LXU3/Spring_2019_TTU_cluster/Ardeidae/Ardeidae_reanalysis/raw/merged_raw_data/$newname/out.extendedFrags.fastq.gz -sample sample -ref seed -end 50 --clean &> MITObim.log
	cd /Volumes/HD-LXU3/Spring_2019_TTU_cluster/Ardeidae/Ardeidae_reanalysis/raw/
done
