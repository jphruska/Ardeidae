# Molecular Rate Variation Workflow

## Prepping subsets of UCEs for relaxed clock analysis in BEAST 
1. Copy over all UCEs found in the complete tissue dataset (dataset 6a) into one dataset. 

2. Make folders for each subset of UCEs (in this case 5) with mkdir. 

3. Select 500 random UCEs. 
`ls *.nex | sort -R >> uce_list_500.txt` 

4. Check to make sure there are no redudant UCEs. Expect 500 unique items in this uce_list_500.txt. 
`uniq uce_list_500.txt | wc -l` 

5. Copy over UCEs in blocks of 100 to respective folders. 

6. Run AMAS (01_AMAS_concat.sh) for each subset to concatenate UCEs and generate nexus alignment (with partition information). 


## Two-cluster (Takezaki) tests in LINTRE

1. Code for prepping alignment and tree files for LINTRE is included in 02_LINTRE.R. This also includes the one-liner of code to run LINTRE once the input file has been generated. Also includes code to generate Figure 5 of the manuscript. 
