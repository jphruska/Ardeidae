library(ape)
library(phangorn)
#read dna sequences and standardize taxa names
seqs <- read.dna("C:/Subir/Projects/Herons/Hruska/mafft-nexus-trimmed-gblocks-clean.phylip", format="sequential", as.character = T)
seqs_bin <- nexus2DNAbin(seqs)
rownames(seqs_bin) <- gsub("(^[a-z])[a-z]+(_[a-z]{1,4})[a-z]+.*", "\\1\\2", rownames(seqs_bin))
rownames(seqs_bin) <- toupper(rownames(seqs_bin))

#read tree data and standardize taxa names
tree2 <- read.nexus("C:/Subir/Projects/Herons/Hruska/RAxML_bipartitions.reconcile_trim_no_toepads_complete.tre")
tree2$tip.label <- gsub("(^[a-z])[a-z]+(_[a-z]{1,4})[A-Za-z0-9_]+", "\\1\\2", tree2$tip.label)
tree2$tip.label <- toupper(tree2$tip.label)
tree2 <- root(tree2, node=55, resolve.root = T)

#match order of tips to order of sequences
is_tip <- tree2$edge[,2] <= length(tree2$tip.label)
ordered_tips <- tree2$edge[is_tip, 2]
tips_ordered <- tree2$tip.label[ordered_tips]
tip_mat <- data.frame(ordered_tips, tips_ordered)
tip_mat <- tip_mat[order(tip_mat[,1]),]
tip_mat$comb <- paste(tip_mat$ordered_tips, tip_mat$tips_ordered)

#create output format required for lintre; numbering of tips need to be reversed for lintre consistency
nodes_mat_a <- data.frame(node=seq(length(tree2$tip.label)+1,2*length(tree2$tip.label)-1))
nodes_mat_b <- data.frame(node=seq(length(tree2$tip.label)+1,2*length(tree2$tip.label)-1))
children <- unlist(lapply(nodes_mat_a[,1], function(x) Children(tree2, x)))
nodes_mat_a$child <- children[seq(1,length(children),2)]
nodes_mat_a$length <- mapply(castor::get_pairwise_distances, nodes_mat_a$node, nodes_mat_a$child, MoreArgs = list(tree=tree2))
nodes_mat_b$child <- children[seq(2,length(children),2)]
nodes_mat_b$length <- mapply(castor::get_pairwise_distances, nodes_mat_b$node, nodes_mat_b$child, MoreArgs = list(tree=tree2))
nodes_mat <- rbind(nodes_mat_a, nodes_mat_b)
nodes_mat <- nodes_mat[order(nodes_mat$node, decreasing = T),]
nodes_mat$node <- as.character(nodes_mat$node)
nodes_mat <- DataCombine::FindReplace(nodes_mat,
                                           "node",
                                           data.frame(from = seq(length(tree2$tip.label)+1,2*length(tree2$tip.label)-1),
                                                      to = seq(2*length(tree2$tip.label)-1, length(tree2$tip.label)+1, -1)+1000),
                                           from="from",
                                           to="to")
nodes_mat$node <- as.numeric(nodes_mat$node)-1000
nodes_mat$child <- as.character(nodes_mat$child)
nodes_mat <- DataCombine::FindReplace(nodes_mat,
                                      "child",
                                      data.frame(from = seq(length(tree2$tip.label)+1,2*length(tree2$tip.label)-1),
                                                 to = seq(2*length(tree2$tip.label)-1, length(tree2$tip.label)+1, -1)+1000),
                                      from="from",
                                      to="to")
nodes_mat$child <- as.numeric(nodes_mat$child)
nodes_mat$child[nodes_mat$child>1000] <- as.numeric(nodes_mat$child[nodes_mat$child>1000]-1000)
nodes_mat$length <- format(round(nodes_mat$length, 5), scientific = F)
nodes_mat$text <- paste("",nodes_mat$node, "and ", nodes_mat$child, "      ", nodes_mat$length, sep = " ")

#write output tree
filename = "C:/Subir/Projects/Herons/Hruska/Ardeidae_uce_new.tre"
write(paste("", length(tree2$tip.label), "sequences", sep = " "), filename, append=F)
write(unlist(lapply(tip_mat$comb, paste, collapse=" ")), filename, append = T)
write(unlist(lapply(nodes_mat$text, paste, collapse=" ")), filename, append = T)

#output tree needs one last change. R adds one last line at 0 length for root that needs to be changed
#by removing the last line and substituting the node value to the root node (part of what was deleted) 
#in the peultimate line

#sequence data in (pseudo) phylip format is input for lintre
#that file needs to be modified slightly to remove the first line which has number of sequences and length
#and then all the bases need to be changed to upper case, missing data changed to ?
#check the ordering of taxa to make sure it is in the same order as the tree file generated here
#may need to manually order the lines to match the order in the two files.


#lintre code is:
#~/lintre/tpcv Ardeidae_uce_new2.dat -tArdeidae_uce_new.tre -d14 -o 5 6 7 > Ardeidae_uce_new.output

#Output from lintre with the first few comments line removed
output <- read.delim("C:/Subir/Projects/Herons/Hruska/output_new.txt",sep="\t", header = T)
output$node <- as.character(output$node)

#modify the numbering of tips to match R input tree
output <- DataCombine::FindReplace(output,
                                      "node",
                                      data.frame(from = seq(length(tree2$tip.label)+1,2*length(tree2$tip.label)-1)+1000,
                                                 to = seq(2*length(tree2$tip.label)-1, length(tree2$tip.label)+1, -1)),
                                      from="to",
                                      to="from")
output$node <- as.numeric(output$node)
output$node[output$node>1000] <- as.numeric(output$node[output$node>1000]-1000)
output$L <- as.character(output$L)
output <- DataCombine::FindReplace(output,
                                   "L",
                                   data.frame(from = seq(length(tree2$tip.label)+1,2*length(tree2$tip.label)-1)+1000,
                                              to = seq(2*length(tree2$tip.label)-1, length(tree2$tip.label)+1, -1)),
                                   from="to",
                                   to="from")
output$L <- as.numeric(output$L)
output$L[output$L>1000] <- as.numeric(output$L[output$L>1000]-1000)
output$R <- as.character(output$R)
output <- DataCombine::FindReplace(output,
                                   "R",
                                   data.frame(from = seq(length(tree2$tip.label)+1,2*length(tree2$tip.label)-1)+1000,
                                              to = seq(2*length(tree2$tip.label)-1, length(tree2$tip.label)+1, -1)),
                                   from="to",
                                   to="from")
output$R <- as.numeric(output$R)
output$R[output$R>1000] <- as.numeric(output$R[output$R>1000]-1000)
output <- output[order(output$node),]
output$dir <- paste(output$L, output$si, output$R)
write.table(output, "C:/Subir/Projects/Herons/Hruska/output_new2.txt", sep="\t", row.names = F, quote = F)

#plot tree
plot(tree2, align.tip.label = T)
nodelabels(seq(50,97), adj=c(2,2), frame="none")
tiplabels(frame = "none")
nodelabels(frame="none", pch=16, cex= c(0, output$delta[1:5]*2500, 0, output$delta[6:48]*2500))
nodelabels(c(0, output$dir[1:5], 0, output$dir[6:48]), frame="none", cex=0.5, adj=c(2,-2))

#saved at 600 x 1200
