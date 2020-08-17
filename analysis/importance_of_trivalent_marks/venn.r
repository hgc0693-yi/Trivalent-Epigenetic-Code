objects()
rm(list=ls(all=TRUE))
objects()

library(VennDiagram)

###########################

data = as.matrix(read.table("prepared_data_for_5hmC.txt", sep="", header=T))
hmC <- data[,1]

data = as.matrix(read.table("prepared_data_for_H3K4me1.txt", sep="", header=T))
H3K4me1 <- data[,1]

data = as.matrix(read.table("prepared_data_for_H4K8ac.txt", sep="", header=T))
H4K8ac <- data[,1]

###########################

pre_data=list(Genes_with_5hmC_enrichment=hmC, Genes_with_H3K4me1_enrichment=H3K4me1, Genes_with_H4K8ac_enrichment=H4K8ac)

venn.diagram(pre_data, filename="Venn_Diagram.tiff", fill=c(7,4,2), lty=1, scaled=T, cex=1.5, cat.pos=c(340,17,180), cat.cex=c(1.1,1.1,1.1))

###########################

hmC_plus_H3K4me1_minus <- setdiff(hmC, H3K4me1)
hmC_plus_H4K8ac_minus <- setdiff(hmC, H4K8ac)
H3K4me1_plus_hmC_minus <- setdiff(H3K4me1, hmC)
H3K4me1_plus_H4K8ac_minus <- setdiff(H3K4me1, H4K8ac)
H4K8ac_plus_hmC_minus <- setdiff(H4K8ac, hmC)
H4K8ac_plus_H3K4me1_minus <- setdiff(H4K8ac, H3K4me1)

hmC_plus_H3K4me1_plus <- intersect(hmC, H3K4me1)
H3K4me1_plus_H4K8ac_plus <- intersect(H3K4me1, H4K8ac)
hmC_plus_H4K8ac_plus <- intersect(hmC, H4K8ac)

###########################

hmC_plus_H3K4me1_minus_H4K8ac_minus <- setdiff(hmC_plus_H3K4me1_minus, H4K8ac)
hmC_plus_H3K4me1_minus_H4K8ac_minus = as.matrix(hmC_plus_H3K4me1_minus_H4K8ac_minus)

H3K4me1_plus_hmC_minus_H4K8ac_minus <- setdiff(H3K4me1_plus_hmC_minus, H4K8ac)
H3K4me1_plus_hmC_minus_H4K8ac_minus <- as.matrix(H3K4me1_plus_hmC_minus_H4K8ac_minus)

H4K8ac_plus_hmC_minus_H3K4me1_minus <- setdiff(H4K8ac_plus_H3K4me1_minus, hmC)
H4K8ac_plus_hmC_minus_H3K4me1_minus <- as.matrix(H4K8ac_plus_hmC_minus_H3K4me1_minus)

hmC_plus_H3K4me1_plus_H4K8ac_minus <- setdiff(hmC_plus_H3K4me1_plus, H4K8ac)
hmC_plus_H3K4me1_plus_H4K8ac_minus <- as.matrix(hmC_plus_H3K4me1_plus_H4K8ac_minus)

hmC_plus_H3K4me1_minus_H4K8ac_plus <- setdiff(hmC_plus_H4K8ac_plus, H3K4me1)
hmC_plus_H3K4me1_minus_H4K8ac_plus <- as.matrix(hmC_plus_H3K4me1_minus_H4K8ac_plus)

hmC_minus_H3K4me1_plus_H4K8ac_plus <- setdiff(H3K4me1_plus_H4K8ac_plus, hmC)
hmC_minus_H3K4me1_plus_H4K8ac_plus <- as.matrix(hmC_minus_H3K4me1_plus_H4K8ac_plus)

hmC_plus_H3K4me1_plus_H4K8ac_plus <- intersect(hmC, H3K4me1_plus_H4K8ac_plus)
hmC_plus_H3K4me1_plus_H4K8ac_plus <- as.matrix(hmC_plus_H3K4me1_plus_H4K8ac_plus)

################################

write(t(hmC_plus_H3K4me1_minus_H4K8ac_minus), "./relation_to_geneexp/hmC_plus_H3K4me1_minus_H4K8ac_minus.txt", sep="")
write(t(H3K4me1_plus_hmC_minus_H4K8ac_minus), "./relation_to_geneexp/H3K4me1_plus_hmC_minus_H4K8ac_minus.txt", sep="")
write(t(H4K8ac_plus_hmC_minus_H3K4me1_minus), "./relation_to_geneexp/H4K8ac_plus_hmC_minus_H3K4me1_minus.txt", sep="")
write(t(hmC_plus_H3K4me1_plus_H4K8ac_minus), "./relation_to_geneexp/hmC_plus_H3K4me1_plus_H4K8ac_minus.txt", sep="")
write(t(hmC_plus_H3K4me1_minus_H4K8ac_plus), "./relation_to_geneexp/hmC_plus_H3K4me1_minus_H4K8ac_plus.txt", sep="")
write(t(hmC_minus_H3K4me1_plus_H4K8ac_plus), "./relation_to_geneexp/hmC_minus_H3K4me1_plus_H4K8ac_plus.txt", sep="")
write(t(hmC_plus_H3K4me1_plus_H4K8ac_plus), "./relation_to_geneexp/hmC_plus_H3K4me1_plus_H4K8ac_plus.txt", sep="")