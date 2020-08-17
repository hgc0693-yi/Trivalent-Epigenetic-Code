basis_3 = read.table("whole_factors_of_basis_3.txt", header=TRUE, sep="")

basis_3_genebody_5hmC = basis_3[,2]
basis_3_genebody_5mC = basis_3[,3]
basis_3_genebody_H2AK5ac = basis_3[,4]
basis_3_genebody_H2BK5ac = basis_3[,5]
basis_3_genebody_H2BK12ac = basis_3[,6]
basis_3_genebody_H2BK15ac = basis_3[,7]
basis_3_genebody_H3K4me1 = basis_3[,8]
basis_3_genebody_H3K4me2 = basis_3[,9]
basis_3_genebody_H3K4me3 = basis_3[,10]
basis_3_genebody_H3K4ac = basis_3[,11]
basis_3_genebody_H3K9ac = basis_3[,12]
basis_3_genebody_H4K8ac = basis_3[,13]
basis_3_genebody_H3K14ac = basis_3[,14]
basis_3_genebody_H3K18ac = basis_3[,15]
basis_3_genebody_H3K23ac = basis_3[,16]
basis_3_genebody_H3K27ac = basis_3[,17]
basis_3_genebody_H3K9me3 = basis_3[,18]
basis_3_genebody_H3K27me3 = basis_3[,19]
basis_3_genebody_H4K20me1 = basis_3[,20]

basis_3_promoter_5hmC = basis_3[,21]
basis_3_promoter_5mC = basis_3[,22]
basis_3_promoter_H2AK5ac = basis_3[,23]
basis_3_promoter_H2BK5ac = basis_3[,24]
basis_3_promoter_H2BK12ac = basis_3[,25]
basis_3_promoter_H2BK15ac = basis_3[,26]
basis_3_promoter_H3K4me1 = basis_3[,27]
basis_3_promoter_H3K4me2 = basis_3[,28]
basis_3_promoter_H3K4me3 = basis_3[,29]
basis_3_promoter_H3K4ac = basis_3[,30]
basis_3_promoter_H3K9ac = basis_3[,31]
basis_3_promoter_H4K8ac = basis_3[,32]
basis_3_promoter_H3K14ac = basis_3[,33]
basis_3_promoter_H3K18ac = basis_3[,34]
basis_3_promoter_H3K23ac = basis_3[,35]
basis_3_promoter_H3K27ac = basis_3[,36]
basis_3_promoter_H3K9me3 = basis_3[,37]
basis_3_promoter_H3K27me3 = basis_3[,38]
basis_3_promoter_H4K20me1 = basis_3[,39]


boxplot(basis_3_genebody_5hmC, basis_3_genebody_5mC, basis_3_genebody_H2AK5ac, basis_3_genebody_H2BK5ac, basis_3_genebody_H2BK12ac, basis_3_genebody_H2BK15ac, basis_3_genebody_H3K4me1, basis_3_genebody_H3K4me2, basis_3_genebody_H3K4me3, basis_3_genebody_H3K4ac, basis_3_genebody_H3K9ac, basis_3_genebody_H4K8ac, basis_3_genebody_H3K14ac, basis_3_genebody_H3K18ac, basis_3_genebody_H3K23ac, basis_3_genebody_H3K27ac, basis_3_genebody_H3K9me3, basis_3_genebody_H3K27me3, basis_3_genebody_H4K20me1, basis_3_promoter_5hmC, basis_3_promoter_5mC, basis_3_promoter_H2AK5ac, basis_3_promoter_H2BK5ac, basis_3_promoter_H2BK12ac, basis_3_promoter_H2BK15ac, basis_3_promoter_H3K4me1, basis_3_promoter_H3K4me2, basis_3_promoter_H3K4me3, basis_3_promoter_H3K4ac, basis_3_promoter_H3K9ac, basis_3_promoter_H4K8ac, basis_3_promoter_H3K14ac, basis_3_promoter_H3K18ac, basis_3_promoter_H3K23ac, basis_3_promoter_H3K27ac, basis_3_promoter_H3K9me3, basis_3_promoter_H3K27me3, basis_3_promoter_H4K20me1, main="Group_3 (genebody and promoter)", ylab="factor intensities of the genes in each group", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

### boxplot(basis_3_genebody_5hmC, basis_3_genebody_5mC, basis_3_genebody_H2AK5ac, basis_3_genebody_H2BK5ac, basis_3_genebody_H2BK12ac, basis_3_genebody_H2BK15ac, basis_3_genebody_H3K4me1, basis_3_genebody_H3K4me2, basis_3_genebody_H3K4me3, basis_3_genebody_H3K4ac, basis_3_genebody_H3K9ac, basis_3_genebody_H4K8ac, basis_3_genebody_H3K14ac, basis_3_genebody_H3K18ac, basis_3_genebody_H3K23ac, basis_3_genebody_H3K27ac, basis_3_genebody_H3K9me3, basis_3_genebody_H3K27me3, basis_3_genebody_H4K20me1, basis_3_promoter_5hmC, basis_3_promoter_5mC, basis_3_promoter_H2AK5ac, basis_3_promoter_H2BK5ac, basis_3_promoter_H2BK12ac, basis_3_promoter_H2BK15ac, basis_3_promoter_H3K4me1, basis_3_promoter_H3K4me2, basis_3_promoter_H3K4me3, basis_3_promoter_H3K4ac, basis_3_promoter_H3K9ac, basis_3_promoter_H4K8ac, basis_3_promoter_H3K14ac, basis_3_promoter_H3K18ac, basis_3_promoter_H3K23ac, basis_3_promoter_H3K27ac, basis_3_promoter_H3K9me3, basis_3_promoter_H3K27me3, basis_3_promoter_H4K20me1, main="rank_3 (genebody and promoter)", ylab="factor intensities of the genes in each rank", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), ylim=c(0,250), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)  

dev.off()          