data = read.table("DEG_homer_fibro_vs_ES_color", header=TRUE, sep="\t")

head(data)

FC_log2 <- data[,1]
head(FC_log2)

q_value <- -log10(data[,2])
head(q_value)

###difference <- data[,3]

color <- data[,3]
head(color)

###library(rgl)

plot(FC_log2, q_value, col=as.numeric(color), main="DEG (ES vs fibroblast)", xlab="Log2(FC)", ylab="-log10(FDR)", xlim=c(-10,10), ylim=c(0,2))

axis(side=1, at=c(-1,1)) 
axis(side=2, at=1.3)

text(12,2.3,"q-value < 0.05")
text(10.5,2.2,"|log2(FC)| > 1")

###plot3d(FC, q_value, difference, xlab="Fold_Change(fibroblast/ES)", ylab="-log10(q-value)", zlab="difference", col=as.numeric(color))

abline(h=1.3, v=c(-1,1), col="red")    ### q-value < 0.05, log2(FC) > 1, < -1 

dev.off()           