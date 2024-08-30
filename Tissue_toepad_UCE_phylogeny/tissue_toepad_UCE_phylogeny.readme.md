# Tissue + toepad UCE phylogeny

Initial phylogenies that included both toepad and tissue samples were rife with phylogentic artifacts (e.g., long-branch attraction). 
In an attempt to ameliorate these issues we tested the effect of differing internal trimming parameters (-b2 flag in Gblocks). Here, we tested -b2 values 0.45,0.55,0.65,0.75,0.85,0.95 and 1. 
All other steps of the phyluce/raxml workflow were followed as is laid out in the Tissue_UCE_phylogeny folder. 
Here, as an example, we provide a script that is illustrative of how the Gblocks filtering was carried out. Gblocks filtering was carried out for both complete and incomplete datasets, 
but we here provide a script that pertains to the incomplete dataset. 
