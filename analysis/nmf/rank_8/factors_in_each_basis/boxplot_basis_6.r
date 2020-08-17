basis_6 = read.table("whole_factors_of_basis_6.txt", header=TRUE, sep="")

basis_6_genebody_5hmC = basis_6[,2]
basis_6_genebody_5mC = basis_6[,3]
basis_6_genebody_H2AK5ac = basis_6[,4]
basis_6_genebody_H2BK5ac = basis_6[,5]
basis_6_genebody_H2BK12ac = basis_6[,6]
basis_6_genebody_H2BK15ac = basis_6[,7]
basis_6_genebody_H3K4me1 = basis_6[,8]
basis_6_genebody_H3K4me2 = basis_6[,9]
basis_6_genebody_H3K4me3 = basis_6[,10]
basis_6_genebody_H3K4ac = basis_6[,11]
basis_6_genebody_H3K9ac = basis_6[,12]
basis_6_genebody_H4K8ac = basis_6[,13]
basis_6_genebody_H3K14ac = basis_6[,14]
basis_6_genebody_H3K18ac = basis_6[,15]
basis_6_genebody_H3K23ac = basis_6[,16]
basis_6_genebody_H3K27ac = basis_6[,17]
basis_6_genebody_H3K9me3 = basis_6[,18]
basis_6_genebody_H3K27me3 = basis_6[,19]
basis_6_genebody_H4K20me1 = basis_6[,20]

basis_6_promoter_5hmC = basis_6[,21]
basis_6_promoter_5mC = basis_6[,22]
basis_6_promoter_H2AK5ac = basis_6[,23]
basis_6_promoter_H2BK5ac = basis_6[,24]
basis_6_promoter_H2BK12ac = basis_6[,25]
basis_6_promoter_H2BK15ac = basis_6[,26]
basis_6_promoter_H3K4me1 = basis_6[,27]
basis_6_promoter_H3K4me2 = basis_6[,28]
basis_6_promoter_H3K4me3 = basis_6[,29]
basis_6_promoter_H3K4ac = basis_6[,30]
basis_6_promoter_H3K9ac = basis_6[,31]
basis_6_promoter_H4K8ac = basis_6[,32]
basis_6_promoter_H3K14ac = basis_6[,33]
basis_6_promoter_H3K18ac = basis_6[,34]
basis_6_promoter_H3K23ac = basis_6[,35]
basis_6_promoter_H3K27ac = basis_6[,36]
basis_6_promoter_H3K9me3 = basis_6[,37]
basis_6_promoter_H3K27me3 = basis_6[,38]
basis_6_promoter_H4K20me1 = basis_6[,39]


boxplot(basis_6_genebody_5hmC, basis_6_genebody_5mC, basis_6_genebody_H2AK5ac, basis_6_genebody_H2BK5ac, basis_6_genebody_H2BK12ac, basis_6_genebody_H2BK15ac, basis_6_genebody_H3K4me1, basis_6_genebody_H3K4me2, basis_6_genebody_H3K4me3, basis_6_genebody_H3K4ac, basis_6_genebody_H3K9ac, basis_6_genebody_H4K8ac, basis_6_genebody_H3K14ac, basis_6_genebody_H3K18ac, basis_6_genebody_H3K23ac, basis_6_genebody_H3K27ac, basis_6_genebody_H3K9me3, basis_6_genebody_H3K27me3, basis_6_genebody_H4K20me1, basis_6_promoter_5hmC, basis_6_promoter_5mC, basis_6_promoter_H2AK5ac, basis_6_promoter_H2BK5ac, basis_6_promoter_H2BK12ac, basis_6_promoter_H2BK15ac, basis_6_promoter_H3K4me1, basis_6_promoter_H3K4me2, basis_6_promoter_H3K4me3, basis_6_promoter_H3K4ac, basis_6_promoter_H3K9ac, basis_6_promoter_H4K8ac, basis_6_promoter_H3K14ac, basis_6_promoter_H3K18ac, basis_6_promoter_H3K23ac, basis_6_promoter_H3K27ac, basis_6_promoter_H3K9me3, basis_6_promoter_H3K27me3, basis_6_promoter_H4K20me1, main="Group_6 (genebody and promoter)", ylab="factor intensities of the genes in each group", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

### boxplot(basis_6_genebody_5hmC, basis_6_genebody_5mC, basis_6_genebody_H2AK5ac, basis_6_genebody_H2BK5ac, basis_6_genebody_H2BK12ac, basis_6_genebody_H2BK15ac, basis_6_genebody_H3K4me1, basis_6_genebody_H3K4me2, basis_6_genebody_H3K4me3, basis_6_genebody_H3K4ac, basis_6_genebody_H3K9ac, basis_6_genebody_H4K8ac, basis_6_genebody_H3K14ac, basis_6_genebody_H3K18ac, basis_6_genebody_H3K23ac, basis_6_genebody_H3K27ac, basis_6_genebody_H3K9me3, basis_6_genebody_H3K27me3, basis_6_genebody_H4K20me1, basis_6_promoter_5hmC, basis_6_promoter_5mC, basis_6_promoter_H2AK5ac, basis_6_promoter_H2BK5ac, basis_6_promoter_H2BK12ac, basis_6_promoter_H2BK15ac, basis_6_promoter_H3K4me1, basis_6_promoter_H3K4me2, basis_6_promoter_H3K4me3, basis_6_promoter_H3K4ac, basis_6_promoter_H3K9ac, basis_6_promoter_H4K8ac, basis_6_promoter_H3K14ac, basis_6_promoter_H3K18ac, basis_6_promoter_H3K23ac, basis_6_promoter_H3K27ac, basis_6_promoter_H3K9me3, basis_6_promoter_H3K27me3, basis_6_promoter_H4K20me1, main="rank_6 (genebody and promoter)", ylab="factor intensities of the genes in each rank", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), ylim=c(0,870), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)  

dev.off()          