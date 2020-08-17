in_f <- "all.count.txt"                #入力ファイル名を指定してin_fに格納
out_f <- "DEG_homer_fibro_vs_ES.txt"         #出力ファイル名を指定してout_fに格納
param_G1 <- 2                          #G1群のサンプル数を指定    
param_G2 <- 2                          #G2群のサンプル数を指定
param_FDR <- 0.05                      #DhMG検出時のfalse discovery rate (FDR)閾値を指定

#必要なパッケージをロード
PATH="/usr/local/package/r/3.2.1/lib64/R/library/TCC/R:$PATH"
library(TCC)                           #パッケージの読み込み

#入力ファイルの読み込み
data <- read.table(in_f, header=TRUE, row.names=1, sep=" ")     #in_fで指定したファイルの読み込み

head(data)



#前処理(TCCクラスオブジェクトの作成)
  data.cl <- c(rep(1, param_G1), rep(2, param_G2))     #G1群を1、G2群を2としたベクトルdata.clを作成   data.cl = (1,1,1),(2,2,2,2)
  tcc <- new("TCC", data, data.cl)                     #TCCクラスオブジェクトtccを作成

#本番(正規化,DEG検出)
  tcc <- calcNormFactors(tcc, norm.method="tmm", test.method="edger",         #正規化を実行した結果をtccに格納
                         iteration=3, FDR=0.1, floorPDEG=0.05)                #正規化を実行した結果をtccに格納
  normalized <- getNormalizedData(tcc)                                        #正規化後のデータを取り出してnormalizedに格納
  tcc <- estimateDE(tcc,test.method="edger",FDR=param_FDR)
  result <- getResult(tcc,sort=FALSE)
  head(result)                                                                #確認してるだけです

#ファイルに保存
##tmp <- cbind(tcc$count, normalized, result)
  tmp <- cbind(tcc$count, result)
  write.table(tmp, out_f, sep="\t", append=F, quote=F, row.names=F)           #tmpの中身を指定したファイル名で保存

