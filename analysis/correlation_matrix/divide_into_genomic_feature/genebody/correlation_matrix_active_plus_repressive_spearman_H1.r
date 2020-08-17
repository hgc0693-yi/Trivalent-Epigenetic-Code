objects()
rm(list=ls(all=TRUE))
objects()

data <- read.table("hmC_5mC_whole_active_plus_repressive_histone_H1.txt", header=TRUE, sep="", row.names="Gene_name")

head(data, n=20)
head(data[[1]])
dim(data) 
class(data)
mode(data)


data <- apply(data, c(1,2), as.character)
head(data)
dim(data) 
class(data)
mode(data)

data <- apply(data, c(1,2), as.numeric)
head(data)
dim(data) 
class(data)
mode(data)


### set 0 to the value when it is under a certain threshold ###
threshold <- 1
data[data < threshold] <- 0

head(data)
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
        cor_data[i,j] <- cor(no_zero_pair[,1], no_zero_pair[,2], method="s")     ### spearman ###
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

corrplot(cor_data, type="upper", method="circle", shade.col=NA, tl.col="black", tl.srt=45, col = color(200), addCoef.col="black", addcolorlabel="no", order="hclust", number.cex = 0.7, diag = FALSE, cl.lim = c(-0.7, 1))



