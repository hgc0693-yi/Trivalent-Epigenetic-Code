basis_1 = read.table("whole_factors_of_basis_1.txt", header=TRUE, sep="")

basis_1_genebody_5hmC = basis_1[,2]
basis_1_genebody_5mC = basis_1[,3]
basis_1_genebody_H2AK5ac = basis_1[,4]
basis_1_genebody_H2BK5ac = basis_1[,5]
basis_1_genebody_H2BK12ac = basis_1[,6]
basis_1_genebody_H2BK15ac = basis_1[,7]
basis_1_genebody_H3K4me1 = basis_1[,8]
basis_1_genebody_H3K4me2 = basis_1[,9]
basis_1_genebody_H3K4me3 = basis_1[,10]
basis_1_genebody_H3K4ac = basis_1[,11]
basis_1_genebody_H3K9ac = basis_1[,12]
basis_1_genebody_H4K8ac = basis_1[,13]
basis_1_genebody_H3K14ac = basis_1[,14]
basis_1_genebody_H3K18ac = basis_1[,15]
basis_1_genebody_H3K23ac = basis_1[,16]
basis_1_genebody_H3K27ac = basis_1[,17]
basis_1_genebody_H3K9me3 = basis_1[,18]
basis_1_genebody_H3K27me3 = basis_1[,19]
basis_1_genebody_H4K20me1 = basis_1[,20]

basis_1_promoter_5hmC = basis_1[,21]
basis_1_promoter_5mC = basis_1[,22]
basis_1_promoter_H2AK5ac = basis_1[,23]
basis_1_promoter_H2BK5ac = basis_1[,24]
basis_1_promoter_H2BK12ac = basis_1[,25]
basis_1_promoter_H2BK15ac = basis_1[,26]
basis_1_promoter_H3K4me1 = basis_1[,27]
basis_1_promoter_H3K4me2 = basis_1[,28]
basis_1_promoter_H3K4me3 = basis_1[,29]
basis_1_promoter_H3K4ac = basis_1[,30]
basis_1_promoter_H3K9ac = basis_1[,31]
basis_1_promoter_H4K8ac = basis_1[,32]
basis_1_promoter_H3K14ac = basis_1[,33]
basis_1_promoter_H3K18ac = basis_1[,34]
basis_1_promoter_H3K23ac = basis_1[,35]
basis_1_promoter_H3K27ac = basis_1[,36]
basis_1_promoter_H3K9me3 = basis_1[,37]
basis_1_promoter_H3K27me3 = basis_1[,38]
basis_1_promoter_H4K20me1 = basis_1[,39]


boxplot(basis_1_genebody_5hmC, basis_1_genebody_5mC, basis_1_genebody_H2AK5ac, basis_1_genebody_H2BK5ac, basis_1_genebody_H2BK12ac, basis_1_genebody_H2BK15ac, basis_1_genebody_H3K4me1, basis_1_genebody_H3K4me2, basis_1_genebody_H3K4me3, basis_1_genebody_H3K4ac, basis_1_genebody_H3K9ac, basis_1_genebody_H4K8ac, basis_1_genebody_H3K14ac, basis_1_genebody_H3K18ac, basis_1_genebody_H3K23ac, basis_1_genebody_H3K27ac, basis_1_genebody_H3K9me3, basis_1_genebody_H3K27me3, basis_1_genebody_H4K20me1, basis_1_promoter_5hmC, basis_1_promoter_5mC, basis_1_promoter_H2AK5ac, basis_1_promoter_H2BK5ac, basis_1_promoter_H2BK12ac, basis_1_promoter_H2BK15ac, basis_1_promoter_H3K4me1, basis_1_promoter_H3K4me2, basis_1_promoter_H3K4me3, basis_1_promoter_H3K4ac, basis_1_promoter_H3K9ac, basis_1_promoter_H4K8ac, basis_1_promoter_H3K14ac, basis_1_promoter_H3K18ac, basis_1_promoter_H3K23ac, basis_1_promoter_H3K27ac, basis_1_promoter_H3K9me3, basis_1_promoter_H3K27me3, basis_1_promoter_H4K20me1, main="Group_1 (genebody and promoter)", ylab="factor intensities of the genes in each group", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

### boxplot(basis_1_genebody_5hmC, basis_1_genebody_5mC, basis_1_genebody_H2AK5ac, basis_1_genebody_H2BK5ac, basis_1_genebody_H2BK12ac, basis_1_genebody_H2BK15ac, basis_1_genebody_H3K4me1, basis_1_genebody_H3K4me2, basis_1_genebody_H3K4me3, basis_1_genebody_H3K4ac, basis_1_genebody_H3K9ac, basis_1_genebody_H4K8ac, basis_1_genebody_H3K14ac, basis_1_genebody_H3K18ac, basis_1_genebody_H3K23ac, basis_1_genebody_H3K27ac, basis_1_genebody_H3K9me3, basis_1_genebody_H3K27me3, basis_1_genebody_H4K20me1, basis_1_promoter_5hmC, basis_1_promoter_5mC, basis_1_promoter_H2AK5ac, basis_1_promoter_H2BK5ac, basis_1_promoter_H2BK12ac, basis_1_promoter_H2BK15ac, basis_1_promoter_H3K4me1, basis_1_promoter_H3K4me2, basis_1_promoter_H3K4me3, basis_1_promoter_H3K4ac, basis_1_promoter_H3K9ac, basis_1_promoter_H4K8ac, basis_1_promoter_H3K14ac, basis_1_promoter_H3K18ac, basis_1_promoter_H3K23ac, basis_1_promoter_H3K27ac, basis_1_promoter_H3K9me3, basis_1_promoter_H3K27me3, basis_1_promoter_H4K20me1, main="rank_1 (genebody and promoter)", ylab="factor intensities of the genes in each rank", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), ylim=c(0,280), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F) 

dev.off()          