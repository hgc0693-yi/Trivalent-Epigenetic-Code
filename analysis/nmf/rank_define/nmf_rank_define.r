objects()
rm(list=ls(all=TRUE))
objects()

data <- read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/genebody_promoter.txt", sep = "", header = T, row.names = 1)
dim(data)
class(data)
head(data)

idx <- apply(data, 1, sum) > 0    ### remove all-zero rows ##
data <- data[idx,]
dim(data)
class(data)
head(data)

library(NMF, lib.loc="/home/yi-maru/R/x86_64-pc-linux-gnu-library/3.5/")
library(dplyr)

nmfAlgorithm()
nmfSeed()

res <- nmf(data, rank = 2:10, 'lee', seed=123456)   ### defining rank ### 
plot(res)








