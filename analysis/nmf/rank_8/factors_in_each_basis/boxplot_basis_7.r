basis_7 = read.table("whole_factors_of_basis_7.txt", header=TRUE, sep="")

basis_7_genebody_5hmC = basis_7[,2]
basis_7_genebody_5mC = basis_7[,3]
basis_7_genebody_H2AK5ac = basis_7[,4]
basis_7_genebody_H2BK5ac = basis_7[,5]
basis_7_genebody_H2BK12ac = basis_7[,6]
basis_7_genebody_H2BK15ac = basis_7[,7]
basis_7_genebody_H3K4me1 = basis_7[,8]
basis_7_genebody_H3K4me2 = basis_7[,9]
basis_7_genebody_H3K4me3 = basis_7[,10]
basis_7_genebody_H3K4ac = basis_7[,11]
basis_7_genebody_H3K9ac = basis_7[,12]
basis_7_genebody_H4K8ac = basis_7[,13]
basis_7_genebody_H3K14ac = basis_7[,14]
basis_7_genebody_H3K18ac = basis_7[,15]
basis_7_genebody_H3K23ac = basis_7[,16]
basis_7_genebody_H3K27ac = basis_7[,17]
basis_7_genebody_H3K9me3 = basis_7[,18]
basis_7_genebody_H3K27me3 = basis_7[,19]
basis_7_genebody_H4K20me1 = basis_7[,20]

basis_7_promoter_5hmC = basis_7[,21]
basis_7_promoter_5mC = basis_7[,22]
basis_7_promoter_H2AK5ac = basis_7[,23]
basis_7_promoter_H2BK5ac = basis_7[,24]
basis_7_promoter_H2BK12ac = basis_7[,25]
basis_7_promoter_H2BK15ac = basis_7[,26]
basis_7_promoter_H3K4me1 = basis_7[,27]
basis_7_promoter_H3K4me2 = basis_7[,28]
basis_7_promoter_H3K4me3 = basis_7[,29]
basis_7_promoter_H3K4ac = basis_7[,30]
basis_7_promoter_H3K9ac = basis_7[,31]
basis_7_promoter_H4K8ac = basis_7[,32]
basis_7_promoter_H3K14ac = basis_7[,33]
basis_7_promoter_H3K18ac = basis_7[,34]
basis_7_promoter_H3K23ac = basis_7[,35]
basis_7_promoter_H3K27ac = basis_7[,36]
basis_7_promoter_H3K9me3 = basis_7[,37]
basis_7_promoter_H3K27me3 = basis_7[,38]
basis_7_promoter_H4K20me1 = basis_7[,39]


boxplot(basis_7_genebody_5hmC, basis_7_genebody_5mC, basis_7_genebody_H2AK5ac, basis_7_genebody_H2BK5ac, basis_7_genebody_H2BK12ac, basis_7_genebody_H2BK15ac, basis_7_genebody_H3K4me1, basis_7_genebody_H3K4me2, basis_7_genebody_H3K4me3, basis_7_genebody_H3K4ac, basis_7_genebody_H3K9ac, basis_7_genebody_H4K8ac, basis_7_genebody_H3K14ac, basis_7_genebody_H3K18ac, basis_7_genebody_H3K23ac, basis_7_genebody_H3K27ac, basis_7_genebody_H3K9me3, basis_7_genebody_H3K27me3, basis_7_genebody_H4K20me1, basis_7_promoter_5hmC, basis_7_promoter_5mC, basis_7_promoter_H2AK5ac, basis_7_promoter_H2BK5ac, basis_7_promoter_H2BK12ac, basis_7_promoter_H2BK15ac, basis_7_promoter_H3K4me1, basis_7_promoter_H3K4me2, basis_7_promoter_H3K4me3, basis_7_promoter_H3K4ac, basis_7_promoter_H3K9ac, basis_7_promoter_H4K8ac, basis_7_promoter_H3K14ac, basis_7_promoter_H3K18ac, basis_7_promoter_H3K23ac, basis_7_promoter_H3K27ac, basis_7_promoter_H3K9me3, basis_7_promoter_H3K27me3, basis_7_promoter_H4K20me1, main="Group_7 (genebody and promoter)", ylab="factor intensities of the genes in each group", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

### boxplot(basis_7_genebody_5hmC, basis_7_genebody_5mC, basis_7_genebody_H2AK5ac, basis_7_genebody_H2BK5ac, basis_7_genebody_H2BK12ac, basis_7_genebody_H2BK15ac, basis_7_genebody_H3K4me1, basis_7_genebody_H3K4me2, basis_7_genebody_H3K4me3, basis_7_genebody_H3K4ac, basis_7_genebody_H3K9ac, basis_7_genebody_H4K8ac, basis_7_genebody_H3K14ac, basis_7_genebody_H3K18ac, basis_7_genebody_H3K23ac, basis_7_genebody_H3K27ac, basis_7_genebody_H3K9me3, basis_7_genebody_H3K27me3, basis_7_genebody_H4K20me1, basis_7_promoter_5hmC, basis_7_promoter_5mC, basis_7_promoter_H2AK5ac, basis_7_promoter_H2BK5ac, basis_7_promoter_H2BK12ac, basis_7_promoter_H2BK15ac, basis_7_promoter_H3K4me1, basis_7_promoter_H3K4me2, basis_7_promoter_H3K4me3, basis_7_promoter_H3K4ac, basis_7_promoter_H3K9ac, basis_7_promoter_H4K8ac, basis_7_promoter_H3K14ac, basis_7_promoter_H3K18ac, basis_7_promoter_H3K23ac, basis_7_promoter_H3K27ac, basis_7_promoter_H3K9me3, basis_7_promoter_H3K27me3, basis_7_promoter_H4K20me1, main="rank_7 (genebody and promoter)", ylab="factor intensities of the genes in each rank", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), ylim=c(0,1000), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)  

dev.off()          