#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N ardeidae_generate_genetrees_raxml
#$ -q omni
#$ -pe sm 6
#$ -P xlquanah
#$ -l h_vmem=20G

mkdir raxml_genetrees
wd=`pwd`
cd ./ardeidae_75p_phylip
unset i
for i in `ls *.phylip-relaxed`;
do mkdir ../raxml_genetrees/$i;
toraxml="raxmlHPC-SSE3 -m GTRGAMMA -n best -s $wd/ardeidae_75p_phylip/$i -p $RANDOM -w $wd/raxml_genetrees/$i";
$toraxml;
done;
