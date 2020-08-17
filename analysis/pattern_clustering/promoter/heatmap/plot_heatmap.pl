#!/usr/bin/perl

$infile = "/home/yi-maru/RNA-seq/research/DEG_and_epigenomefactors_relation/only_promoter/5hmC_5mC_H3K4me1_H4K8ac/heatmap/preparing_combined_data/combined_whole_factors.txt";

if(!-e $infile){
    print $infile . " was not found\n";
    exit;
}

$CLS_DIR = "Clusters/";
if(!-e $CLS_DIR){
    system("mkdir $CLS_DIR");
}

$psfile    = $infile . ".log2_fc2.heatmap.ps";
$rdata    = $infile . "_HC.RData";
$r_cmd   = $infile . ".hclust.r.cmd";
$r_out    = $infile . ".hclust.r.out";

$FC = 2.0;
$CC_CT = 0.6;
#=================#
# R command lines
open(OUT, ">$r_cmd");
print OUT <<EOF;

library(MASS)
library(cluster)
library(gplots)
library(limma)
library(RColorBrewer)
library(ggplot2)
library(reshape2)

# My functions used in this R
my.hclust<- function(d) hclust(d, method="average")
my.dist  <- function(x) dist(x, method="euclidean")

# Color pannel
heatmapCol <- function (data, col, lim) {
    nrcol <- length(col)
    data.range <- range(data)
    if (diff(data.range) == 0)
        stop("data has range 0")
    if (lim <= 0)
        stop("lim has to be positive")
    if (lim > min(abs(data.range))) {
        warning("specified bound 'lim' is out of data range\n\n
                         hence 'min(abs(range(data)))' is used")
        lim <- min(abs(data.range))
    }
    nrcol <- length(col)
    reps1 <- ceiling(nrcol * (-lim - data.range[1])/(2 * lim))
    reps2 <- ceiling(nrcol * (data.range[2] - lim)/(2 * lim))
    col1 <- c(rep(col[1], reps1), col, rep(col[nrcol], reps2))
    return(col1)
}


data <- read.table("$infile", header=TRUE, sep=" ", row.names=1)
class(data)
head(data)

#--------------------

idx1 <- data[,1] >= 3 # expression in Fiblo under 3 FPKM ----- cut off
idx2 <- data[,2] >= 3 # expression in ES under 3 FPKM -------- cut off

idx <- idx1 | idx2
data <- data[idx,]

#--------------------

RNA_fibro <- data[,1]
head(RNA_fibro)

RNA_ES <- data[,2]
head(RNA_ES)

############
# promoter #
############
 
sudo <- 0.0001
PM_5hmC <- log2( (data[,3]+sudo) / (data[,7]+sudo) ) # ES / Fib
head(PM_5hmC)

PM_5mC <- log2( (data[,4]+sudo) / (data[,8]+sudo) ) # ES / Fib
head(PM_5mC)

PM_H3K4me1 <- log2( (data[,5]+sudo) / (data[,9]+sudo) ) # ES / Fib
head(PM_H3K4me1)

PM_H4K8ac <- log2( (data[,6]+sudo) / (data[,10]+sudo) ) # ES / Fib
head(PM_H4K8ac)


gene_name <- rownames(data)
all_data <- cbind(PM_5hmC, PM_5mC, PM_H3K4me1, PM_H4K8ac)

CUT_FC <- log2($FC) # log2(2.0) -> 1.0
all_data [ abs(all_data) <= CUT_FC ] <- 0  # set 0-value to each FC which value is under 1.0
 

rownames(all_data) <- gene_name
all_data <- round(all_data, 2)

head(all_data)
class(all_data)

# replace NA to zero
X <- replace(all_data, which(is.na(all_data)), 0)

#X[ X < $ct] <- 0
d0 <- X        ### contains all_zero_value rows

# Write out INPUT DATA 1 
sink(file="input_data_1.txt", append=FALSE)
  T <- cbind(rownames(X), X)
  colnames(T) <- c( "Gene", colnames(X) )
  write.table(T, quote=FALSE, col.names=TRUE, row.names=FALSE,sep="\t")
sink()

idx  <- apply(abs(X), 1, sum) > 0      ### remove all zero rows (genes)
x  <- as.matrix( X[idx,] )
rn <- rownames(x)
cn <- colnames(x)

# Write out INPUT DATA 2 without zero vectors
sink(file="input_data_2.txt", append=FALSE)
  T <- cbind(rownames(x), x)
  colnames(T) <- c( "Gene", colnames(x) )
  write.table(T, quote=FALSE, col.names=TRUE, row.names=FALSE,sep="\t")
sink()

A  <- x
A2 <- t(x)

head(A)
dim(A)

HC  <- my.hclust( my.dist(A))
HCfileName  <- "$rdata"
save(HC, file=HCfileName)

HC2 <- my.hclust( my.dist(A2))
HCfileName2 <- paste(HCfileName, ".col",sep="")
save(HC2, file=HCfileName2)

postscript("$psfile",horizontal=FALSE);
op<-par(pty="m")

# Plot heatmap
ifelse( ncol(A) > 100, tsizeC <- 0.2, tsizeC <- 1.7)
ifelse( nrow(A) > 50,  tsizeR <- 0.1, tsizeR <- 1.3)


####################################################

# Cluster Cut
minN  <- 1
K       <- 20
TK     <- K
gp     <- cutree(HC, k=TK)
sidecol <- colorRampPalette( brewer.pal(12, "Paired") )
this_sidecol <- sample(sidecol(K))

rc <- rep("white", nrow(A)) #default color

names(rc) <- rownames(A)
cnt <- 1 #cluster id
CLS_IDX <- c() #cluster sorting

for (i in 1:TK){
 idx <- (gp == i)

 if(sum(idx) > minN){
   n     <- names( gp[idx] )
   rc[n] <- this_sidecol[cnt]

   CLS_IDX <- c(CLS_IDX, sum(idx)) #cluster size
   names(CLS_IDX)[cnt] <- i            #cluster index

   #Pick up K: if K does not include >minN, the last one is the final one
   if(cnt == K){
     break
   }
   cnt   <- cnt + 1
 }

}

# order by cluster size
CLS_IDX <- sort(CLS_IDX, decreasing=TRUE)
#---------------#


mycol <- colorRampPalette(c("blue","white","orange"))(10)

m1 <- 10; m2 <- 20
heatmap.2(A,margin=c(m1,m2),scale="none",trace="none",col=mycol,
          Rowv=as.dendrogram(HC), Colv=FALSE,dendrogram="row",

	  keysize=0.8,
          density.info="none",
          key.par=list(mar=c(5,2,6,0)), #mar(bottom from main plot, left, top, right)
          key.ylab="",
          key.xlab="log2(FC)",
          key.title="",
	  main="",
	  ylab=paste( nrow(x), " genes", sep=""),
          cexRow=tsizeR, cexCol=tsizeC, RowSideColors=rc, labRow=FALSE)

plot(HC2, main="", cex=1.5, xlab="",sub="")

heatmap.2(A,margin=c(5,20),scale="none",trace="none",col=mycol,
          Rowv=as.dendrogram(HC), Colv=as.dendrogram(HC2),dendrogram="both",

	  keysize=0.8,
          density.info="none",
          key.par=list(mar=c(5,2,6,0)), #mar(bottom from main plot, left, top, right)
          key.ylab="",
          key.xlab="log2(FC)",
          key.title="",
	  main="",
	  ylab=paste( nrow(x), " genes", sep=""),
          cexRow=tsizeR, cexCol=tsizeC, RowSideColors=rc, labRow=FALSE)

##########################################################

## Using Polygon
my.clustPlot <- function (CLS, y1=NULL, y2=NULL, title=NULL){
  if(y1 == "NULL"){
       y1 <- min(CLS)
  }
  if(y2 == "NULL"){
       y2 <- max(CLS)
  }

  #mean and s.d.
  MCLS <- apply(CLS, 2, mean)
  SD   <- apply(CLS, 2, sd)

  gene <- nrow(CLS)

  plot( MCLS, ylim=c(y1,y2),col="red",type="n",lwd=2,
        main=title, sub=paste("(", gene, " genes)", sep=""),
        xlab="",ylab="Log2(FC) of factor intensities", axes=F)
  axis(2, cex.axis=0.8)
  abline(h=0)

  ## labeling
  op2 <- par(xpd=NA)
  text( c(1:ncol(CLS)), y1-0.3, colnames(CLS), adj=c(1,1), srt=45, cex=0.6)
  par(op2)

  ## SD plot
  op2 <- par(xpd=NA)
  xx  <- c( c(1:length(MCLS)), c(length(MCLS):1) )
  yy  <- c( MCLS+SD, rev(MCLS-SD) )
  polygon(xx, yy, col="lightgrey", border=NA)

  ## Plot mean line
  par(op2)
  points( MCLS, col="red",type="b",lwd=2, cex=0.9)
}
#===================================================#


op <- par(mfrow=c(2,2),pty="s", cex=1.1)
y1 <- min(A);y2 <- max(A)

cnt <- 1 # this is output cluseter ID
for (i in 1:length(CLS_IDX) ){
  idx <- ( gp == names(CLS_IDX)[i] )

  if(sum(idx) > minN){
    n    <- names(gp[idx])
    CLS  <- A[n,]
    CLS2 <- round( A[n,], 5 ) #normalized values for output
    MCLS <- apply(CLS, 2, mean)

    CC <- c()               #correlation coeff.
    PICK <- c()
    for(j in 1:nrow(CLS)){
         this_cc <- round( cor(CLS[j,], MCLS),5 )

       CC <- rbind(CC, this_cc)

         if(this_cc > $CC_CT){
                PICK <- c(PICK, rownames(CLS)[j]  )
         }
    }

    #Plot
    title <- paste("Cluster ", cnt, sep="")
    my.clustPlot( CLS, y1, y2, title)
    original_expression <- d0[rownames(CLS2),]    ### contains all_zero_rows

    #--------------------#
    x  <- as.matrix(original_expression)
    rn <- rownames(x)
    cn <- colnames(x)
    x <- normalizeBetweenArrays(x, method = "quantile")
    x <- t(scale(t(x), center = TRUE, scale = FALSE))
    x <- scale(x, center = TRUE, scale = TRUE)
    #--------------------#
    rownames(x) <- rn
    colnames(x) <- cn
    x  <- t(scale(t(x), center=TRUE, scale=TRUE))
    x  <- scale(t(x), center=TRUE, scale=TRUE)

    #===========================#
    if( length(PICK) > 0){
        PICK <- d0[ PICK,]
        PICK <- cbind( rownames(PICK), PICK )
        colnames(PICK)[1] <- "ID"

        filename <- paste("$CLS_DIR", "CLS_", "$CC_CT", "_", cnt, ".dat", sep="")
        sink(file=filename, append=FALSE);
        write.table(PICK, quote=FALSE, row.names=FALSE, col.names=TRUE, sep="\t");
        sink()
    }
    #===========================#

     # mean value, norm value + correlationxs
     M  <- rbind(round(MCLS, 5))
     rownames(M) <- "\#mean"
     colnames(CC)<- "Corr."
     CLS2   <- cbind(row.names(CLS2), CLS2)
     CLS2   <- cbind(CLS2, CC)    #Add cc

     colnames(CLS2)[1] <- "ID"

     filename <- paste("$CLS_DIR", "CLS_norm_", cnt, ".dat", sep="")
     sink(file=filename, append=FALSE);
     #Output Mean value as a comment line
     write.table(M, quote=FALSE, row.names=TRUE, col.names=FALSE, sep="\t");
     # Output normalized values
     write.table(CLS2, quote=FALSE, row.names=FALSE, col.names=TRUE, sep="\t");
     sink()

     #===========================#

     CLS2  <- d0[ rownames(CLS2), ]        ### contains all_zero_rows
     CLS2  <- cbind( rownames(CLS2), CLS2)
     colnames(CLS2)[1] <- "ID"

     filename <- paste("$CLS_DIR", "CLS_orig_", cnt, ".dat", sep="")
     sink(file=filename, append=FALSE);
     write.table(CLS2, quote=FALSE, row.names=FALSE, col.names=TRUE, sep="\t");
     sink()
     #===========================#

     if(cnt == K){ break }
     cnt <- cnt + 1
  }

}

par(op)

##########################################################

dev.off()

gc()
q()

EOF
close(OUT);
# End of R command lines
#=================#


# Run it
system("R CMD BATCH --no-save $r_cmd $r_out");
undef(@data);
@data = `tail -3 $r_out`;

system("cat $r_out");
if( !($data[0] =~ /^\>\sproc\.time.*/) ){
    system("cat $r_out");
    exit;
}

unlink($r_cmd);
unlink($r_out);
system("rm -fr NONE/");

exit;

