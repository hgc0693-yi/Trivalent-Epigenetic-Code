basis_4 = read.table("whole_factors_of_basis_4.txt", header=TRUE, sep="")

basis_4_genebody_5hmC = basis_4[,2]
basis_4_genebody_5mC = basis_4[,3]
basis_4_genebody_H2AK5ac = basis_4[,4]
basis_4_genebody_H2BK5ac = basis_4[,5]
basis_4_genebody_H2BK12ac = basis_4[,6]
basis_4_genebody_H2BK15ac = basis_4[,7]
basis_4_genebody_H3K4me1 = basis_4[,8]
basis_4_genebody_H3K4me2 = basis_4[,9]
basis_4_genebody_H3K4me3 = basis_4[,10]
basis_4_genebody_H3K4ac = basis_4[,11]
basis_4_genebody_H3K9ac = basis_4[,12]
basis_4_genebody_H4K8ac = basis_4[,13]
basis_4_genebody_H3K14ac = basis_4[,14]
basis_4_genebody_H3K18ac = basis_4[,15]
basis_4_genebody_H3K23ac = basis_4[,16]
basis_4_genebody_H3K27ac = basis_4[,17]
basis_4_genebody_H3K9me3 = basis_4[,18]
basis_4_genebody_H3K27me3 = basis_4[,19]
basis_4_genebody_H4K20me1 = basis_4[,20]

basis_4_promoter_5hmC = basis_4[,21]
basis_4_promoter_5mC = basis_4[,22]
basis_4_promoter_H2AK5ac = basis_4[,23]
basis_4_promoter_H2BK5ac = basis_4[,24]
basis_4_promoter_H2BK12ac = basis_4[,25]
basis_4_promoter_H2BK15ac = basis_4[,26]
basis_4_promoter_H3K4me1 = basis_4[,27]
basis_4_promoter_H3K4me2 = basis_4[,28]
basis_4_promoter_H3K4me3 = basis_4[,29]
basis_4_promoter_H3K4ac = basis_4[,30]
basis_4_promoter_H3K9ac = basis_4[,31]
basis_4_promoter_H4K8ac = basis_4[,32]
basis_4_promoter_H3K14ac = basis_4[,33]
basis_4_promoter_H3K18ac = basis_4[,34]
basis_4_promoter_H3K23ac = basis_4[,35]
basis_4_promoter_H3K27ac = basis_4[,36]
basis_4_promoter_H3K9me3 = basis_4[,37]
basis_4_promoter_H3K27me3 = basis_4[,38]
basis_4_promoter_H4K20me1 = basis_4[,39]


boxplot(basis_4_genebody_5hmC, basis_4_genebody_5mC, basis_4_genebody_H2AK5ac, basis_4_genebody_H2BK5ac, basis_4_genebody_H2BK12ac, basis_4_genebody_H2BK15ac, basis_4_genebody_H3K4me1, basis_4_genebody_H3K4me2, basis_4_genebody_H3K4me3, basis_4_genebody_H3K4ac, basis_4_genebody_H3K9ac, basis_4_genebody_H4K8ac, basis_4_genebody_H3K14ac, basis_4_genebody_H3K18ac, basis_4_genebody_H3K23ac, basis_4_genebody_H3K27ac, basis_4_genebody_H3K9me3, basis_4_genebody_H3K27me3, basis_4_genebody_H4K20me1, basis_4_promoter_5hmC, basis_4_promoter_5mC, basis_4_promoter_H2AK5ac, basis_4_promoter_H2BK5ac, basis_4_promoter_H2BK12ac, basis_4_promoter_H2BK15ac, basis_4_promoter_H3K4me1, basis_4_promoter_H3K4me2, basis_4_promoter_H3K4me3, basis_4_promoter_H3K4ac, basis_4_promoter_H3K9ac, basis_4_promoter_H4K8ac, basis_4_promoter_H3K14ac, basis_4_promoter_H3K18ac, basis_4_promoter_H3K23ac, basis_4_promoter_H3K27ac, basis_4_promoter_H3K9me3, basis_4_promoter_H3K27me3, basis_4_promoter_H4K20me1, main="Group_4 (genebody and promoter)", ylab="factor intensities of the genes in each group", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)

### boxplot(basis_4_genebody_5hmC, basis_4_genebody_5mC, basis_4_genebody_H2AK5ac, basis_4_genebody_H2BK5ac, basis_4_genebody_H2BK12ac, basis_4_genebody_H2BK15ac, basis_4_genebody_H3K4me1, basis_4_genebody_H3K4me2, basis_4_genebody_H3K4me3, basis_4_genebody_H3K4ac, basis_4_genebody_H3K9ac, basis_4_genebody_H4K8ac, basis_4_genebody_H3K14ac, basis_4_genebody_H3K18ac, basis_4_genebody_H3K23ac, basis_4_genebody_H3K27ac, basis_4_genebody_H3K9me3, basis_4_genebody_H3K27me3, basis_4_genebody_H4K20me1, basis_4_promoter_5hmC, basis_4_promoter_5mC, basis_4_promoter_H2AK5ac, basis_4_promoter_H2BK5ac, basis_4_promoter_H2BK12ac, basis_4_promoter_H2BK15ac, basis_4_promoter_H3K4me1, basis_4_promoter_H3K4me2, basis_4_promoter_H3K4me3, basis_4_promoter_H3K4ac, basis_4_promoter_H3K9ac, basis_4_promoter_H4K8ac, basis_4_promoter_H3K14ac, basis_4_promoter_H3K18ac, basis_4_promoter_H3K23ac, basis_4_promoter_H3K27ac, basis_4_promoter_H3K9me3, basis_4_promoter_H3K27me3, basis_4_promoter_H4K20me1, main="rank_4 (genebody and promoter)", ylab="factor intensities of the genes in each rank", names=c("GB_5hmC", "GB_5mC", "GB_H2AK5ac", "GB_H2BK5ac", "GB_H2BK12ac", "GB_H2BK15ac", "GB_H3K4me1", "GB_H3K4me2", "GB_H3K4me3", "GB_H3K4ac", "GB_H3K9ac", "GB_H4K8ac", "GB_H3K14ac", "GB_H3K18ac", "GB_H3K23ac", "GB_H3K27ac", "GB_H3K9me3", "GB_H3K27me3", "GB_H4K20me1", "PM_5hmC", "PM_5mC", "PM_H2AK5ac", "PM_H2BK5ac", "PM_H2BK12ac", "PM_H2BK15ac", "PM_H3K4me1", "PM_H3K4me2", "PM_H3K4me3", "PM_H3K4ac", "PM_H3K9ac", "PM_H4K8ac", "PM_H3K14ac", "PM_H3K18ac", "PM_H3K23ac", "PM_H3K27ac", "PM_H3K9me3", "PM_H3K27me3", "PM_H4K20me1"), ylim=c(0,330), las=2, col="green", cex.axis=0.7, cex.main=1.0, outline=F)  

dev.off()          