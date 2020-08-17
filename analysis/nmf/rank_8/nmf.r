objects()
rm(list=ls(all=TRUE))
objects()

data <- read.table("/home/yi-maru/integrated_research/nmf/intensity/genebody_plus_promoter/genebody_promoter.txt", sep = "", header = T, row.names = 1)
dim(data)
class(data)
# head(data, n=3)

idx <- apply(data, 1, sum) > 0    ### remove all-zero rows ##
data <- data[idx,]
dim(data)
class(data)
# head(data, n=3)

library(NMF, lib.loc="/home/yi-maru/R/x86_64-pc-linux-gnu-library/3.5/")
library(dplyr)

nmfAlgorithm()
nmfSeed()

res <- nmf(data, rank = 8, 'lee', seed=123456) 
# head(res)
dim(res)
class(res)
algorithm(res)

w <- basis(res)      ###  W-matrix 
dim(w)
class(w)
# head(w)

h <- coef(res)       ###  H-matrix
dim(h)
class(h)
# head(h)

# head(fitted(res))    ###  confirmation of X = W * H  ###
# head(data)           ###  confirmation of X = W * H  ###

x <- fitted(res)     ###  X-matrix

layout(cbind(1, 2))
basismap(res, subsetRow=0.7, info=TRUE)
coefmap(res, info=TRUE)


#############################################
#############################################
extract <- extractFeatures(res, 0.7)
dim(extract)
class(extract)

gene_name <- rownames(w)
head(gene_name)
length(gene_name)

###########

length(extract[[1]])
basis_1 <- extract[[1]]
genes_of_basis_1 <- NULL

for (i in 1:(length(basis_1))) {
    genes_of_basis_1 <- c(genes_of_basis_1, gene_name[basis_1[i]])
}

dim(genes_of_basis_1)
class(genes_of_basis_1)
head(genes_of_basis_1)
write.table(genes_of_basis_1, "genes_of_basis_1.txt", sep="\t", append=F, quote = F, row.names=F, col.names=F)

############

length(extract[[2]])
basis_2 <- extract[[2]]
genes_of_basis_2 <- NULL

for (i in 1:(length(basis_2))) {
    genes_of_basis_2 <- c(genes_of_basis_2, gene_name[basis_2[i]])
}

dim(genes_of_basis_2)
class(genes_of_basis_2)
head(genes_of_basis_2)
write.table(genes_of_basis_2, "genes_of_basis_2.txt", sep="\t", append=F, quote = F, row.names=F, col.names=F)

############

length(extract[[3]])
basis_3 <- extract[[3]]
genes_of_basis_3 <- NULL

for (i in 1:(length(basis_3))) {
    genes_of_basis_3 <- c(genes_of_basis_3, gene_name[basis_3[i]])
}

dim(genes_of_basis_3)
class(genes_of_basis_3)
head(genes_of_basis_3)
write.table(genes_of_basis_3, "genes_of_basis_3.txt", sep="\t", append=F, quote = F, row.names=F, col.names=F)

#############

length(extract[[4]])
basis_4 <- extract[[4]]
genes_of_basis_4 <- NULL

for (i in 1:(length(basis_4))) {
    genes_of_basis_4 <- c(genes_of_basis_4, gene_name[basis_4[i]])
}

dim(genes_of_basis_4)
class(genes_of_basis_4)
head(genes_of_basis_4)
write.table(genes_of_basis_4, "genes_of_basis_4.txt", sep="\t", append=F, quote = F, row.names=F, col.names=F)

##############

length(extract[[5]])
basis_5 <- extract[[5]]
genes_of_basis_5 <- NULL

for (i in 1:(length(basis_5))) {
    genes_of_basis_5 <- c(genes_of_basis_5, gene_name[basis_5[i]])
}

dim(genes_of_basis_5)
class(genes_of_basis_5)
head(genes_of_basis_5)
write.table(genes_of_basis_5, "genes_of_basis_5.txt", sep="\t", append=F, quote = F, row.names=F, col.names=F)

##############

length(extract[[6]])
basis_6 <- extract[[6]]
genes_of_basis_6 <- NULL

for (i in 1:(length(basis_6))) {
    genes_of_basis_6 <- c(genes_of_basis_6, gene_name[basis_6[i]])
}

dim(genes_of_basis_6)
class(genes_of_basis_6)
head(genes_of_basis_6)
write.table(genes_of_basis_6, "genes_of_basis_6.txt", sep="\t", append=F, quote = F, row.names=F, col.names=F)

##############

length(extract[[7]])
basis_7 <- extract[[7]]
genes_of_basis_7 <- NULL

for (i in 1:(length(basis_7))) {
    genes_of_basis_7 <- c(genes_of_basis_7, gene_name[basis_7[i]])
}

dim(genes_of_basis_7)
class(genes_of_basis_7)
head(genes_of_basis_7)
write.table(genes_of_basis_7, "genes_of_basis_7.txt", sep="\t", append=F, quote = F, row.names=F, col.names=F)

##############

length(extract[[8]])
basis_8 <- extract[[8]]
genes_of_basis_8 <- NULL

for (i in 1:(length(basis_8))) {
    genes_of_basis_8 <- c(genes_of_basis_8, gene_name[basis_8[i]])
}

dim(genes_of_basis_8)
class(genes_of_basis_8)
head(genes_of_basis_8)
write.table(genes_of_basis_8, "genes_of_basis_8.txt", sep="\t", append=F, quote = F, row.names=F, col.names=F)

##############################################


basis <- predict(res, 'rows')
write.table(basis, "predict_basis.txt", sep="\t", append=F, quote=F, row.names=T, col.names=T)

coef <- predict(res, 'columns')
write.table(coef, "predict_coef.txt", sep="\t", append=F, quote=F, row.names=T, col.names=T)

write.table(x, "X_matrix.txt", sep="\t", append=F, quote=F, row.names=T, col.names=T)
write.table(w, "W_matrix.txt", sep="\t", append=F, quote=F, row.names=T, col.names=F)
write.table(h, "H_matrix.txt", sep="\t", append=F, quote=F, row.names=F, col.names=T)

dev.off()
