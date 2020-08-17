objects()
rm(list=ls(all=TRUE))
objects()

### set 0 to the value when it is under a certain threshold ###
threshold <- 1

hmC <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/hmC/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
hmC[hmC < threshold] <- 0
head(hmC, n=20)
head(hmC[[1]])
dim(hmC) 
class(hmC)
mode(hmC)

mC <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/mC/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
mC[mC < threshold] <- 0

H2AK5ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H2AK5ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H2AK5ac[H2AK5ac < threshold] <- 0

H2BK5ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H2BK5ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H2BK5ac[H2BK5ac < threshold] <- 0

H2BK12ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H2BK12ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H2BK12ac[H2BK12ac < threshold] <- 0

H2BK15ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H2BK15ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H2BK15ac[H2BK15ac < threshold] <- 0

H3K4me1 <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K4me1/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K4me1[H3K4me1 < threshold] <- 0

H3K4me2 <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K4me2/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K4me2[H3K4me2 < threshold] <- 0

H3K4me3 <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K4me3/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K4me3[H3K4me3 < threshold] <- 0

H3K4ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K4ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K4ac[H3K4ac < threshold] <- 0

H3K9ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K9ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K9ac[H3K9ac < threshold] <- 0

H4K8ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H4K8ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H4K8ac[H4K8ac < threshold] <- 0

H3K14ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K14ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K14ac[H3K14ac < threshold] <- 0

H3K18ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K18ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K18ac[H3K18ac < threshold] <- 0

H3K23ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K23ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K23ac[H3K23ac < threshold] <- 0

H3K27ac <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K27ac/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K27ac[H3K27ac < threshold] <- 0

H3K9me3 <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K9me3/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K9me3[H3K9me3 < threshold] <- 0

H3K27me3 <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H3K27me3/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H3K27me3[H3K27me3 < threshold] <- 0

H4K20me1 <- read.table("/home/yi-maru/revision_for_PlosOne/divide_into_1k_window/prepare/H4K20me1/step3/annotate_1k_windows_whole_chr.txt", header=FALSE, sep="\t")
H4K20me1[H4K20me1 < threshold] <- 0

data <- data.frame(hmC[[4]], mC[[4]], H2AK5ac[[4]], H2BK5ac[[4]], H2BK12ac[[4]], H2BK15ac[[4]], H3K4me1[[4]], H3K4me2[[4]], H3K4me3[[4]], H3K4ac[[4]], H3K9ac[[4]], H4K8ac[[4]], H3K14ac[[4]], H3K18ac[[4]], H3K23ac[[4]], H3K27ac[[4]], H3K9me3[[4]], H3K27me3[[4]], H4K20me1[[4]])
head(data, n=20)
dim(data) 
class(data)
mode(data)

colnames(data) <- c("5hmC", "5mC", "H2AK5ac", "H2BK5ac", "H2BK12ac", "H2BK15ac", "H3K4me1", "H3K4me2", "H3K4me3", "H3K4ac", "H3K9ac", "H4K8ac", "H3K14ac", "H3K18ac", "H3K23ac", "H3K27ac", "H3K9me3", "H3K27me3", "H4K20me1")
head(data, n=20)
dim(data) 
class(data)
mode(data)


data <- apply(data, c(1,2), as.numeric)
head(data, n=20)
dim(data) 
class(data)
mode(data)


cor_data <- matrix(0, nrow=19, ncol=19)      ### make matrix-object
cor_data

for (i in 1:19) {

    for (j in 1:19) {
    	pair <- cbind(data[,i], data[,j])
	idx <- apply(pair, 1, sum) > 0
	no_zero_pair <- pair[idx,]
	cor_data[i,j] <- cor(no_zero_pair[,1], no_zero_pair[,2])
    }

}


rownames(cor_data) <- c("5hmC", "5mC", "H2AK5ac", "H2BK5ac", "H2BK12ac", "H2BK15ac", "H3K4me1", "H3K4me2", "H3K4me3", "H3K4ac", "H3K9ac", "H4K8ac", "H3K14ac", "H3K18ac", "H3K23ac", "H3K27ac", "H3K9me3", "H3K27me3", "H4K20me1")
colnames(cor_data) <- c("5hmC", "5mC", "H2AK5ac", "H2BK5ac", "H2BK12ac", "H2BK15ac", "H3K4me1", "H3K4me2", "H3K4me3", "H3K4ac", "H3K9ac", "H4K8ac", "H3K14ac", "H3K18ac", "H3K23ac", "H3K27ac", "H3K9me3", "H3K27me3", "H4K20me1")
head(cor_data, n=20)
dim(cor_data) 
class(cor_data)
mode(cor_data)



round(cor_data, digits=2)

library(corrplot, lib.loc = "/home/yi-maru/R/x86_64-pc-linux-gnu-library/3.4/")

color <- colorRampPalette(c("darkblue", "blue", "white", "coral", "red"))

corrplot(cor_data, type="upper", method="circle", shade.col=NA, tl.col="black", tl.srt=45, col = color(200), addCoef.col="black", addcolorlabel="no", order="hclust", number.cex = 0.7, diag = FALSE, cl.lim = c(-0.5, 1))

