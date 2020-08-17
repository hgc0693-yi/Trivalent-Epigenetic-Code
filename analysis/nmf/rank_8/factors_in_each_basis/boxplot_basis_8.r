basis_8 = read.table("whole_factors_of_basis_8.txt", header=TRUE, sep="")

basis_8_genebody_5hmC = basis_8[,2]
basis_8_genebody_5mC = basis_8[,3]
basis_8_genebody_H2AK5ac = basis_8[,4]
basis_8_genebody_H2BK5ac = basis_8[,5]
basis_8_genebody_H2BK12ac = basis_8[,6]
basis_8_genebody_H2BK15ac = basis_8[,7]
basis_8_genebody_H3K4me1 = basis_8[,8]
basis_8_genebody_H3K4me2 = basis_8[,9]
basis_8_genebody_H3K4me3 = basis_8[,10]
basis_8_genebody_H3K4ac = basis_8[,11]
basis_8_genebody_H3K9ac = basis_8[,12]
basis_8_genebody_H4K8ac = basis_8[,13]
basis_8_genebody_H3K14ac = basis_8[,14]
basis_8_genebody_H3K18ac = basis_8[,15]
basis_8_genebody_H3K23ac = basis_8[,16]
basis_8_genebody_H3K27ac = basis_8[,17]
basis_8_genebody_H3K9me3 = basis_8[,18]
basis_8_genebody_H3K27me3 = basis_8[,19]
basis_8_genebody_H4K20me1 = basis_8[,20]

basis_8_promoter_5hmC = basis_8[,21]
basis_8_promoter_5mC = basis_8[,22]
basis_8_promoter_H2AK5ac = basis_8[,23]
basis_8_promoter_H2BK5ac = basis_8[,24]
basis_8_promoter_H2BK12ac = basis_8[,25]
basis_8_promoter_H2BK15ac = basis_8[,26]
basis_8_promoter_H3K4me1 = basis_8[,27]
basis_8_promoter_H3K4me2 = basis_8[,28]
basis_8_promoter_H3K4me3 = basis_8[,29]
basis_8_promoter_H3K4ac = basis_8[,30]
basis_8_promoter_H3K9ac = basis_8[,31]
basis_8_promoter_H4K8ac = basis_8[,32]
basis_8_promoter_H3K14ac = basis_8[,33]
basis_8_promoter_H3K18ac = basis_8[,34]
basis_8_promoter_H3K23ac = basis_8[,35]
basis_8_promoter_H3K27ac = basis_8[,36]
basis_8_promoter_H3K9me3 = basis_8[,37]
basis_8_promoter_H3K27me3 = basis_8[,38]
basis_8_promoter_H4K20me1 = basis_8[,39]


boxplot(basis_8_genebody_5hmC, basis_8_genebody_5mC, basis_8_genebody_H2AK5ac, basis_8_genebody_H2BK5ac, basis_8_genebody_H2BK12ac, basis_8_genebody_H2BK15ac, basis_8_genebody_H3K4me1, basis_8_genebody_H3K4me2, basis_8_genebody_H3K4me3, basis_8_genebody_H3K4ac, basis_8_genebody_H3K9ac, basis_8_genebody_H4K8ac, basis_8_genebody_H3K14ac, basis_8_genebody_H3K18ac, basis_8_genebody_H3K23ac, basis_8_genebody_H3K27ac, basis_8_genebody_H3K9me3, basis_8_genebody_H3K27me3, basis_8_genebody_H4K20me1, basis_8_promoter_5hmC, basis_8_promoter_5mC, basis_8_promoter_H2AK5ac, basis_8_promoter_H2BK5ac, basis_8_promoter_H2BK12ac, basis_8_promoter_H2BK15ac, basis_8_promoter_H3K4me1, basis_8_promoter_H3K4me2, basis_8_promoter_H3K4me3, basis_8_promoter_H3K4ac, basis_8_promoter_H3K9ac, basis_8_promoter_H4K8ac, basis_8_promoter_H3K14ac, basis_8_promoter_H3K18ac, basis_8_promoter_H3K23ac, basis_8_promoter_H3K27ac, basis_8_promoter_H3K9me3, basis_8_promoter_H3K27me3, basis_8_promoter_H4K20me1, main="Group_8 (genebody and promoter)", ylab="factor intensities of the genes in each group", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

### boxplot(basis_8_genebody_5hmC, basis_8_genebody_5mC, basis_8_genebody_H2AK5ac, basis_8_genebody_H2BK5ac, basis_8_genebody_H2BK12ac, basis_8_genebody_H2BK15ac, basis_8_genebody_H3K4me1, basis_8_genebody_H3K4me2, basis_8_genebody_H3K4me3, basis_8_genebody_H3K4ac, basis_8_genebody_H3K9ac, basis_8_genebody_H4K8ac, basis_8_genebody_H3K14ac, basis_8_genebody_H3K18ac, basis_8_genebody_H3K23ac, basis_8_genebody_H3K27ac, basis_8_genebody_H3K9me3, basis_8_genebody_H3K27me3, basis_8_genebody_H4K20me1, basis_8_promoter_5hmC, basis_8_promoter_5mC, basis_8_promoter_H2AK5ac, basis_8_promoter_H2BK5ac, basis_8_promoter_H2BK12ac, basis_8_promoter_H2BK15ac, basis_8_promoter_H3K4me1, basis_8_promoter_H3K4me2, basis_8_promoter_H3K4me3, basis_8_promoter_H3K4ac, basis_8_promoter_H3K9ac, basis_8_promoter_H4K8ac, basis_8_promoter_H3K14ac, basis_8_promoter_H3K18ac, basis_8_promoter_H3K23ac, basis_8_promoter_H3K27ac, basis_8_promoter_H3K9me3, basis_8_promoter_H3K27me3, basis_8_promoter_H4K20me1, main="rank_8 (genebody and promoter)", ylab="factor intensities of the genes in each rank", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), ylim=c(0,150), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)  

dev.off()          