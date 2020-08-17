objects()
rm(list=ls(all=TRUE))
objects()

data <- read.table("/home/yi-maru/hmC/research/scatter_plot/prepared_data_DEG_ES_up.txt", header=TRUE, sep="", row.names="Gene_name")


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


data2 <- read.table("/home/yi-maru/hmC/research/scatter_plot/prepared_data_except_for_DEG_ES_up.txt", header=TRUE, sep="", row.names="Gene_name")
data2 <- apply(data2, c(1,2), as.character)
data2 <- apply(data2, c(1,2), as.numeric)
data2 <- as.data.frame(data2)

Exp2 <- log2(data2$H1_2_RNA / data2$HDF_1_RNA)
hmC2 <- log2(data2$H1_5hmC / data2$IMR90_5hmC)


plot(Exp, hmC, col="red", xlim=c(-10,10), ylim=c(-10,8), main="5hmC (DEG_ES_up)", ann=F)
par(new=T)
plot(Exp2, hmC2, col="blue", xlim=c(-10,10), ylim=c(-10,8), xlab="Expression_ratio (ESC vs fibroblast)", ylab="5hmC_intensity_ratio (ESC vs fibroblast)")
abline(a=0, b=0, col="yellow")




