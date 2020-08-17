objects()
rm(list=ls(all=TRUE))
objects()

##########

data <- read.table("hmC_plus_H3K4me1_minus_H4K8ac_minus_add_exp_5hmC.txt", header=TRUE, sep="", row.names="Gene_name")
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

data <- as.data.frame(data)
head(data, n=10)

Exp <- log2(data$H1_2_RNA / data$HDF_1_RNA)
hmC <- log2(data$H1_5hmC / data$IMR90_5hmC)

##########

data2 <- read.table("hmC_plus_H3K4me1_plus_H4K8ac_minus_add_exp_5hmC.txt", header=TRUE, sep="", row.names="Gene_name")
data2 <- apply(data2, c(1,2), as.character)
data2 <- apply(data2, c(1,2), as.numeric)
data2 <- as.data.frame(data2)
head(data2, n=10)

Exp2 <- log2(data2$H1_2_RNA / data2$HDF_1_RNA)
hmC2 <- log2(data2$H1_5hmC / data2$IMR90_5hmC)

##########

data3 <- read.table("hmC_plus_H3K4me1_plus_H4K8ac_plus_add_exp_5hmC.txt", header=TRUE, sep="", row.names="Gene_name")
data3 <- apply(data3, c(1,2), as.character)
data3 <- apply(data3, c(1,2), as.numeric)
data3 <- as.data.frame(data3)
head(data3, n=10)

Exp3 <- log2(data3$H1_2_RNA / data3$HDF_1_RNA)
hmC3 <- log2(data3$H1_5hmC / data3$IMR90_5hmC)

##########

plot(Exp, hmC, col="red", xlim=c(-10,10), ylim=c(0,8), main="Scatter plot", ann=F)
par(new=T)

plot(Exp2, hmC2, col="blue", xlim=c(-10,10), ylim=c(0,8), xlab="Expression_ratio (ESC vs fibroblast)", ylab="5hmC_intensity_ratio (ESC vs fibroblast)")
par(new=T)

plot(Exp3, hmC3, col="green", xlim=c(-10,10), ylim=c(0,8), xlab="Expression_ratio (ESC vs fibroblast)", ylab="5hmC_intensity_ratio (ESC vs fibroblast)")

abline(a=1, b=0, col="yellow")




