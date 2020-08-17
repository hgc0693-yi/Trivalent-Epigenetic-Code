basis_5 = read.table("whole_factors_of_basis_5.txt", header=TRUE, sep="")

basis_5_genebody_5hmC = basis_5[,2]
basis_5_genebody_5mC = basis_5[,3]
basis_5_genebody_H2AK5ac = basis_5[,4]
basis_5_genebody_H2BK5ac = basis_5[,5]
basis_5_genebody_H2BK12ac = basis_5[,6]
basis_5_genebody_H2BK15ac = basis_5[,7]
basis_5_genebody_H3K4me1 = basis_5[,8]
basis_5_genebody_H3K4me2 = basis_5[,9]
basis_5_genebody_H3K4me3 = basis_5[,10]
basis_5_genebody_H3K4ac = basis_5[,11]
basis_5_genebody_H3K9ac = basis_5[,12]
basis_5_genebody_H4K8ac = basis_5[,13]
basis_5_genebody_H3K14ac = basis_5[,14]
basis_5_genebody_H3K18ac = basis_5[,15]
basis_5_genebody_H3K23ac = basis_5[,16]
basis_5_genebody_H3K27ac = basis_5[,17]
basis_5_genebody_H3K9me3 = basis_5[,18]
basis_5_genebody_H3K27me3 = basis_5[,19]
basis_5_genebody_H4K20me1 = basis_5[,20]

basis_5_promoter_5hmC = basis_5[,21]
basis_5_promoter_5mC = basis_5[,22]
basis_5_promoter_H2AK5ac = basis_5[,23]
basis_5_promoter_H2BK5ac = basis_5[,24]
basis_5_promoter_H2BK12ac = basis_5[,25]
basis_5_promoter_H2BK15ac = basis_5[,26]
basis_5_promoter_H3K4me1 = basis_5[,27]
basis_5_promoter_H3K4me2 = basis_5[,28]
basis_5_promoter_H3K4me3 = basis_5[,29]
basis_5_promoter_H3K4ac = basis_5[,30]
basis_5_promoter_H3K9ac = basis_5[,31]
basis_5_promoter_H4K8ac = basis_5[,32]
basis_5_promoter_H3K14ac = basis_5[,33]
basis_5_promoter_H3K18ac = basis_5[,34]
basis_5_promoter_H3K23ac = basis_5[,35]
basis_5_promoter_H3K27ac = basis_5[,36]
basis_5_promoter_H3K9me3 = basis_5[,37]
basis_5_promoter_H3K27me3 = basis_5[,38]
basis_5_promoter_H4K20me1 = basis_5[,39]


boxplot(basis_5_genebody_5hmC, basis_5_genebody_5mC, basis_5_genebody_H2AK5ac, basis_5_genebody_H2BK5ac, basis_5_genebody_H2BK12ac, basis_5_genebody_H2BK15ac, basis_5_genebody_H3K4me1, basis_5_genebody_H3K4me2, basis_5_genebody_H3K4me3, basis_5_genebody_H3K4ac, basis_5_genebody_H3K9ac, basis_5_genebody_H4K8ac, basis_5_genebody_H3K14ac, basis_5_genebody_H3K18ac, basis_5_genebody_H3K23ac, basis_5_genebody_H3K27ac, basis_5_genebody_H3K9me3, basis_5_genebody_H3K27me3, basis_5_genebody_H4K20me1, basis_5_promoter_5hmC, basis_5_promoter_5mC, basis_5_promoter_H2AK5ac, basis_5_promoter_H2BK5ac, basis_5_promoter_H2BK12ac, basis_5_promoter_H2BK15ac, basis_5_promoter_H3K4me1, basis_5_promoter_H3K4me2, basis_5_promoter_H3K4me3, basis_5_promoter_H3K4ac, basis_5_promoter_H3K9ac, basis_5_promoter_H4K8ac, basis_5_promoter_H3K14ac, basis_5_promoter_H3K18ac, basis_5_promoter_H3K23ac, basis_5_promoter_H3K27ac, basis_5_promoter_H3K9me3, basis_5_promoter_H3K27me3, basis_5_promoter_H4K20me1, main="Group_5 (genebody and promoter)", ylab="factor intensities of the genes in each group", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

### boxplot(basis_5_genebody_5hmC, basis_5_genebody_5mC, basis_5_genebody_H2AK5ac, basis_5_genebody_H2BK5ac, basis_5_genebody_H2BK12ac, basis_5_genebody_H2BK15ac, basis_5_genebody_H3K4me1, basis_5_genebody_H3K4me2, basis_5_genebody_H3K4me3, basis_5_genebody_H3K4ac, basis_5_genebody_H3K9ac, basis_5_genebody_H4K8ac, basis_5_genebody_H3K14ac, basis_5_genebody_H3K18ac, basis_5_genebody_H3K23ac, basis_5_genebody_H3K27ac, basis_5_genebody_H3K9me3, basis_5_genebody_H3K27me3, basis_5_genebody_H4K20me1, basis_5_promoter_5hmC, basis_5_promoter_5mC, basis_5_promoter_H2AK5ac, basis_5_promoter_H2BK5ac, basis_5_promoter_H2BK12ac, basis_5_promoter_H2BK15ac, basis_5_promoter_H3K4me1, basis_5_promoter_H3K4me2, basis_5_promoter_H3K4me3, basis_5_promoter_H3K4ac, basis_5_promoter_H3K9ac, basis_5_promoter_H4K8ac, basis_5_promoter_H3K14ac, basis_5_promoter_H3K18ac, basis_5_promoter_H3K23ac, basis_5_promoter_H3K27ac, basis_5_promoter_H3K9me3, basis_5_promoter_H3K27me3, basis_5_promoter_H4K20me1, main="rank_5 (genebody and promoter)", ylab="factor intensities of the genes in each rank", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), ylim=c(0,1200), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)  

dev.off()          