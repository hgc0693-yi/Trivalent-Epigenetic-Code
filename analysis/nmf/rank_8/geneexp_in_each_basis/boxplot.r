basis_1 = read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/rank_8/geneexp_in_each_basis/whole_geneexp_of_basis_1.txt", header=TRUE, sep="")
basis_2 = read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/rank_8/geneexp_in_each_basis/whole_geneexp_of_basis_2.txt", header=TRUE, sep="")
basis_3 = read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/rank_8/geneexp_in_each_basis/whole_geneexp_of_basis_3.txt", header=TRUE, sep="")
basis_4 = read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/rank_8/geneexp_in_each_basis/whole_geneexp_of_basis_4.txt", header=TRUE, sep="")
basis_5 = read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/rank_8/geneexp_in_each_basis/whole_geneexp_of_basis_5.txt", header=TRUE, sep="")
basis_6 = read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/rank_8/geneexp_in_each_basis/whole_geneexp_of_basis_6.txt", header=TRUE, sep="")
basis_7 = read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/rank_8/geneexp_in_each_basis/whole_geneexp_of_basis_7.txt", header=TRUE, sep="")
basis_8 = read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/rank_8/geneexp_in_each_basis/whole_geneexp_of_basis_8.txt", header=TRUE, sep="")


basis_1_geneexp = basis_1[,2]
basis_2_geneexp = basis_2[,2]
basis_3_geneexp = basis_3[,2]
basis_4_geneexp = basis_4[,2]
basis_5_geneexp = basis_5[,2]
basis_6_geneexp = basis_6[,2]
basis_7_geneexp = basis_7[,2]
basis_8_geneexp = basis_8[,2]


boxplot(basis_1_geneexp, basis_2_geneexp, basis_3_geneexp, basis_4_geneexp, basis_5_geneexp, basis_6_geneexp, basis_7_geneexp, basis_8_geneexp, main="Expression of genes in each group", ylab="FPKM",
 names=c("Group_1", "Group_2", "Group_3", "Group_4", "Group_5", "Group_6", "Group_7", "Group_8"), las=2, col="green", cex.axis=1.0, cex.main=1.0, outline=F)  

dev.off()          