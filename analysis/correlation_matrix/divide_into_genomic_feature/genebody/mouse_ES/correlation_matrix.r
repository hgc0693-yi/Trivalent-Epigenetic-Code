objects()
rm(list=ls(all=TRUE))
objects()

data <- read.table("hmC_H3K4me1_H4K8ac.txt", header=TRUE, sep="", row.names="Gene_name")

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


cor_data <- matrix(0, nrow=3, ncol=3)      ### make matrix-object
cor_data

for (i in 1:3) {

    for (j in 1:3) {
        pair <- cbind(data[,i], data[,j])
        idx <- apply(pair, 1, sum) > 0
        no_zero_pair <- pair[idx,]
        cor_data[i,j] <- cor(no_zero_pair[,1], no_zero_pair[,2])
    }

}


rownames(cor_data) <- c("5hmC", "H3K4me1",  "H4K8ac")
colnames(cor_data) <- c("5hmC", "H3K4me1",  "H4K8ac")
head(cor_data, n=20)
dim(cor_data) 
class(cor_data)
mode(cor_data)

round(cor_data, digits=2)

library(corrplot, lib.loc = "/home/yi-maru/R/x86_64-pc-linux-gnu-library/3.4/")


color <- colorRampPalette(c("darkblue", "blue", "white", "coral", "red"))

corrplot(cor_data, type="upper", method="circle", shade.col=NA, tl.col="black", tl.srt=45, col = color(200), addCoef.col="black", addcolorlabel="no", order="hclust", number.cex = 1.0, diag = FALSE, cl.lim = c(0, 1))




