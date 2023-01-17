#!/bin/bash
for i in {1..5}; 
do 
	cd subset${i} 
	AMAS.py concat -i *.nexus -f nexus -u nexus -d dna -t subset${i}.nex -p partitions${i}.txt 
	cd ../
done
