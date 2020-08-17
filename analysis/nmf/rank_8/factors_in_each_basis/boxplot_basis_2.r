basis_2 = read.table("whole_factors_of_basis_2.txt", header=TRUE, sep="")

basis_2_genebody_5hmC = basis_2[,2]
basis_2_genebody_5mC = basis_2[,3]
basis_2_genebody_H2AK5ac = basis_2[,4]
basis_2_genebody_H2BK5ac = basis_2[,5]
basis_2_genebody_H2BK12ac = basis_2[,6]
basis_2_genebody_H2BK15ac = basis_2[,7]
basis_2_genebody_H3K4me1 = basis_2[,8]
basis_2_genebody_H3K4me2 = basis_2[,9]
basis_2_genebody_H3K4me3 = basis_2[,10]
basis_2_genebody_H3K4ac = basis_2[,11]
basis_2_genebody_H3K9ac = basis_2[,12]
basis_2_genebody_H4K8ac = basis_2[,13]
basis_2_genebody_H3K14ac = basis_2[,14]
basis_2_genebody_H3K18ac = basis_2[,15]
basis_2_genebody_H3K23ac = basis_2[,16]
basis_2_genebody_H3K27ac = basis_2[,17]
basis_2_genebody_H3K9me3 = basis_2[,18]
basis_2_genebody_H3K27me3 = basis_2[,19]
basis_2_genebody_H4K20me1 = basis_2[,20]

basis_2_promoter_5hmC = basis_2[,21]
basis_2_promoter_5mC = basis_2[,22]
basis_2_promoter_H2AK5ac = basis_2[,23]
basis_2_promoter_H2BK5ac = basis_2[,24]
basis_2_promoter_H2BK12ac = basis_2[,25]
basis_2_promoter_H2BK15ac = basis_2[,26]
basis_2_promoter_H3K4me1 = basis_2[,27]
basis_2_promoter_H3K4me2 = basis_2[,28]
basis_2_promoter_H3K4me3 = basis_2[,29]
basis_2_promoter_H3K4ac = basis_2[,30]
basis_2_promoter_H3K9ac = basis_2[,31]
basis_2_promoter_H4K8ac = basis_2[,32]
basis_2_promoter_H3K14ac = basis_2[,33]
basis_2_promoter_H3K18ac = basis_2[,34]
basis_2_promoter_H3K23ac = basis_2[,35]
basis_2_promoter_H3K27ac = basis_2[,36]
basis_2_promoter_H3K9me3 = basis_2[,37]
basis_2_promoter_H3K27me3 = basis_2[,38]
basis_2_promoter_H4K20me1 = basis_2[,39]


boxplot(basis_2_genebody_5hmC, basis_2_genebody_5mC, basis_2_genebody_H2AK5ac, basis_2_genebody_H2BK5ac, basis_2_genebody_H2BK12ac, basis_2_genebody_H2BK15ac, basis_2_genebody_H3K4me1, basis_2_genebody_H3K4me2, basis_2_genebody_H3K4me3, basis_2_genebody_H3K4ac, basis_2_genebody_H3K9ac, basis_2_genebody_H4K8ac, basis_2_genebody_H3K14ac, basis_2_genebody_H3K18ac, basis_2_genebody_H3K23ac, basis_2_genebody_H3K27ac, basis_2_genebody_H3K9me3, basis_2_genebody_H3K27me3, basis_2_genebody_H4K20me1, basis_2_promoter_5hmC, basis_2_promoter_5mC, basis_2_promoter_H2AK5ac, basis_2_promoter_H2BK5ac, basis_2_promoter_H2BK12ac, basis_2_promoter_H2BK15ac, basis_2_promoter_H3K4me1, basis_2_promoter_H3K4me2, basis_2_promoter_H3K4me3, basis_2_promoter_H3K4ac, basis_2_promoter_H3K9ac, basis_2_promoter_H4K8ac, basis_2_promoter_H3K14ac, basis_2_promoter_H3K18ac, basis_2_promoter_H3K23ac, basis_2_promoter_H3K27ac, basis_2_promoter_H3K9me3, basis_2_promoter_H3K27me3, basis_2_promoter_H4K20me1, main="Group_2 (genebody and promoter)", ylab="factor intensities of the genes in each group", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

  
### boxplot(basis_1_genebody_5hmC, basis_1_genebody_5mC, basis_1_genebody_H2AK5ac, basis_1_genebody_H2BK5ac, basis_1_genebody_H2BK12ac, basis_1_genebody_H2BK15ac, basis_1_genebody_H3K4me1, basis_1_genebody_H3K4me2, basis_1_genebody_H3K4me3, basis_1_genebody_H3K4ac, basis_1_genebody_H3K9ac, basis_1_genebody_H4K8ac, basis_1_genebody_H3K14ac, basis_1_genebody_H3K18ac, basis_1_genebody_H3K23ac, basis_1_genebody_H3K27ac, basis_1_genebody_H3K9me3, basis_1_genebody_H3K27me3, basis_1_genebody_H4K20me1, basis_1_promoter_5hmC, basis_1_promoter_5mC, basis_1_promoter_H2AK5ac, basis_1_promoter_H2BK5ac, basis_1_promoter_H2BK12ac, basis_1_promoter_H2BK15ac, basis_1_promoter_H3K4me1, basis_1_promoter_H3K4me2, basis_1_promoter_H3K4me3, basis_1_promoter_H3K4ac, basis_1_promoter_H3K9ac, basis_1_promoter_H4K8ac, basis_1_promoter_H3K14ac, basis_1_promoter_H3K18ac, basis_1_promoter_H3K23ac, basis_1_promoter_H3K27ac, basis_1_promoter_H3K9me3, basis_1_promoter_H3K27me3, basis_1_promoter_H4K20me1, main="rank_1 (genebody and promoter)", ylab="factor intensities of the genes in each rank", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), ylim=c(0,280), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

 
dev.off()          