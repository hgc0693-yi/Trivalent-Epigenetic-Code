data1 = read.table("Clusters/for_box_plot_norm_1.txt", header=FALSE, sep="\t")
data2 = read.table("Clusters/for_box_plot_norm_2.txt", header=FALSE, sep="\t")
data3 = read.table("Clusters/for_box_plot_norm_3.txt", header=FALSE, sep="\t")
data4 = read.table("Clusters/for_box_plot_norm_4.txt", header=FALSE, sep="\t")
data5 = read.table("Clusters/for_box_plot_norm_5.txt", header=FALSE, sep="\t")
data6 = read.table("Clusters/for_box_plot_norm_6.txt", header=FALSE, sep="\t")
data7 = read.table("Clusters/for_box_plot_norm_7.txt", header=FALSE, sep="\t")
data8 = read.table("Clusters/for_box_plot_norm_8.txt", header=FALSE, sep="\t")
data9 = read.table("Clusters/for_box_plot_norm_9.txt", header=FALSE, sep="\t")
data10 = read.table("Clusters/for_box_plot_norm_10.txt", header=FALSE, sep="\t")
data11 = read.table("Clusters/for_box_plot_norm_11.txt", header=FALSE, sep="\t")
data12 = read.table("Clusters/for_box_plot_norm_12.txt", header=FALSE, sep="\t")
data13 = read.table("Clusters/for_box_plot_norm_13.txt", header=FALSE, sep="\t")
data14 = read.table("Clusters/for_box_plot_norm_14.txt", header=FALSE, sep="\t")
data15 = read.table("Clusters/for_box_plot_norm_15.txt", header=FALSE, sep="\t")
data16 = read.table("Clusters/for_box_plot_norm_16.txt", header=FALSE, sep="\t")
data17 = read.table("Clusters/for_box_plot_norm_17.txt", header=FALSE, sep="\t")
data18 = read.table("Clusters/for_box_plot_norm_18.txt", header=FALSE, sep="\t")
data19 = read.table("Clusters/for_box_plot_norm_19.txt", header=FALSE, sep="\t")
data20 = read.table("Clusters/for_box_plot_norm_20.txt", header=FALSE, sep="\t")


FC1 = data1[,4]
FC2 = data2[,4]
FC3 = data3[,4]
FC4 = data4[,4]
FC5 = data5[,4]
FC6 = data6[,4]
FC7 = data7[,4]
FC8 = data8[,4]
FC9 = data9[,4]
FC10 = data10[,4]
FC11 = data11[,4]
FC12 = data12[,4]
FC13 = data13[,4]
FC14 = data14[,4]
FC15 = data15[,4]
FC16 = data16[,4]
FC17 = data17[,4]
FC18 = data18[,4]
FC19 = data19[,4]
FC20 = data20[,4]


boxplot(FC1,FC2,FC3,FC4,FC5,FC6,FC7,FC8,FC9,FC10,FC11,FC12,FC13,FC14,FC15,FC16,FC17,FC18,FC19,FC20, main="hESC vs fibroblast at promoter", ylab="log2 (FC) of Gene Expression per gene", names=c("Cluster1","Cluster2","Cluster3","Cluster4","Cluster5","Cluster6","Cluster7","Cluster8","Cluster9","Cluster10","Cluster11","Cluster12","Cluster13","Cluster14","Cluster15","Cluster16","Cluster17","Cluster18","Cluster19","Cluster20"), las=2, col="green", cex.axis=1.0, cex.main=0.9, outline=F)  

dev.off()          