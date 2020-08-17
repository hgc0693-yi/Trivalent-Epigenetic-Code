data1 = read.table("hmC_plus_H3K4me1_minus_H4K8ac_minus_expfc.txt", header=FALSE, sep="")
data2 = read.table("H3K4me1_plus_hmC_minus_H4K8ac_minus_expfc.txt", header=FALSE, sep="")
data3 = read.table("H4K8ac_plus_hmC_minus_H3K4me1_minus_expfc.txt", header=FALSE, sep="")
data4 = read.table("hmC_plus_H3K4me1_plus_H4K8ac_minus_expfc.txt", header=FALSE, sep="")
data5 = read.table("hmC_plus_H3K4me1_minus_H4K8ac_plus_expfc.txt", header=FALSE, sep="")
data6 = read.table("hmC_minus_H3K4me1_plus_H4K8ac_plus_expfc.txt", header=FALSE, sep="")
data7 = read.table("hmC_plus_H3K4me1_plus_H4K8ac_plus_expfc.txt", header=FALSE, sep="")

FC1 = data1[,2]
FC2 = data2[,2]
FC3 = data3[,2]
FC4 = data4[,2]
FC5 = data5[,2]
FC6 = data6[,2]
FC7 = data7[,2]


par()$mar    ###下マージン・左マージン・上マージン・右マージン
par(mar=c(9.5, 4.1, 4.1, 2.1))

boxplot(FC1,FC2,FC3,FC4,FC5,FC6,FC7, main="Expression of each group", ylab="Log2 (FC) of gene expression between ESC and fibroblast", names=c("5hmC","H3K4me1","H4K8ac","5hmC_H3K4me1","5hmC_H4K8ac","H3K4me1_H4K8ac","5hmC_H3K4me1_H4K8ac"), las=2, col="green", cex.axis=0.9, cex.main=1.2, outline=F)  

dev.off()          