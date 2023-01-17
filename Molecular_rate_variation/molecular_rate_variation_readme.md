# Molecular Rate Variation Workflow

1. Copy over all UCEs found in the complete tissue dataset (dataset 6a) into one dataset. 

2. Make folders for each subset of UCEs (in this case 5) with mkdir. 

3. Select 500 random UCEs. 
`ls *.nex | sort -R >> uce_list_500.txt` 

4. Check to make sure there are no redudant UCEs. Expect 500 unique items in this uce_list_500.txt. 
`uniq uce_list_500.txt | wc -l` 

5. Copy over UCEs in blocks of 100 to respective folders. 

6. Run AMAS for each subset to concatenate UCEs and generate nexus alignment (with partition information). 

`
#!/bin/bash
for i in {1..5}; 
do 
	cd subset${i} 
	AMAS.py concat -i *.nexus -f nexus -u nexus -d dna -t subset${i}.nex -p partitions${i}.txt 
	cd ../
done
`

