library(VennDiagram)

DEG_ES_up = as.matrix(read.table("DEG_homer_ES_up.txt", sep="\t"))
DEG_ES_down = as.matrix(read.table("DEG_homer_ES_down.txt", sep="\t"))

rank_8 = as.matrix(read.table("whole_geneexp_of_basis_8.txt", sep="", header=TRUE))

data=list(DEG_ES_up=DEG_ES_up, DEG_ES_down=DEG_ES_down, Group_8=rank_8[,1])

venn.diagram(data, filename="Venn_Diagram_group_8.tiff", fill=c(7,4,2), lty=1, scaled=T, cex=1.5, cat.pos=c(0,0,0), cat.cex=c(1.5,1.5,1.5))

 