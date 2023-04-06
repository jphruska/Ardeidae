#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_generate_bootstraps_raxml_leftovers
#$ -q omni
#$ -pe sm 10
#$ -P quanah
#$ -l h_vmem=12G

wd=`pwd`
cd ./uce_lists
unset i
for i in `cat leftovers.txt`;
do mkdir ../raxml_bootstraps/$i;
toraxml="raxmlHPC-SSE3 -m GTRGAMMA -N 500 -s $wd/ardeidae_75p_phylip/$i -p $RANDOM -b $RANDOM -n bootreps -w $wd/raxml_bootstraps/$i -T 10";
$toraxml;
done;

