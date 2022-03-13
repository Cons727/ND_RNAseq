if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("GEOquery")

library(GEOquery)

#------------------------------------------------------------------------

prefix <- 'GSM'
suffix <- seq(3561843, 3561955)
GSM <- paste(prefix, suffix, sep="")

for (i in GSM){
  getGEOSuppFiles(i, makeDirectory = FALSE, fetch_files = TRUE)
}

samplename <- c('CTL_MYL', 'CTL_END', 'CTL_NEU', 'AD_NEU', 'CTL_MYL', 'AD_MYL', 'CTL_MYL', 'CTL_END', 'AD_END', 'CTL_NEU', 'AD_NEU', 'AD_NEU', 'CTL_END', 'CTL_AST', 'CTL_AST', 'CTL_NEU', 'CTL_NEU', 'CTL_END', 'AD_NEU', 'CTL_NEU', 'AD_MYL', 'AD_NEU', 'AD_END', 'CTL_NEU', 'AD_NEU', 'CTL_END', 'CTL_NEU', 'AD_AST', 'CTL_NEU', 'AD_AST', 'CTL_NEU', 'CTL_END', 'CTL_END', 'AD_END', 'AD_MYL', 'CTL_END', 'CTL_AST', 'AD_AST', 'AD_NEU', 'CTL_MYL', 'AD_NEU', 'AD_MYL', 'CTL_AST', 'AD_MYL', 'CTL_NEU', 'AD_MYL', 'AD_NEU', 'AD_END', 'AD_END', 'AD_NEU', 'CTL_NEU', 'CTL_AST', 'CTL_END', 'CTL_NEU', 'CTL_END', 'CTL_AST', 'AD_AST', 'AD_NEU', 'AD_MYL', 'CTL_NEU', 'AD_NEU', 'CTL_NEU', 'CTL_AST', 'CTL_NEU', 'AD_NEU', 'AD_NEU', 'AD_END', 'CTL_NEU', 'CTL_MYL', 'CTL_END', 'CTL_MYL', 'AD_MYL', 'AD_NEU', 'AD_NEU', 'CTL_MYL', 'CTL_MYL', 'CTL_AST', 'AD_END', 'AD_NEU', 'CTL_NEU', 'AD_AST', 'CTL_MYL', 'CTL_MYL', 'CTL_AST', 'CTL_MYL', 'CTL_END', 'CTL_MYL', 'CTL_END', 'CTL_MYL', 'CTL_END', 'AD_NEU', 'CTL_NEU', 'AD_NEU', 'CTL_MYL', 'AD_NEU', 'AD_MYL', 'CTL_MYL', 'CTL_AST', 'CTL_END', 'AD_MYL', 'AD_END', 'CTL_AST', 'CTL_NEU', 'AD_END', 'CTL_NEU', 'CTL_END', 'CTL_AST', 'CTL_NEU', 'AD_AST', 'AD_NEU', 'AD_END', 'CTL_END', 'AD_AST')

file.rename(list.files(pattern="*.tsv.gz"), paste(GSM, samplename, '.tsv.gz', sep="_"))

#------------------------------------------------------------------------

prefix <- 'GSM'
suffix <- seq(3577568, 3577856)
GSM <- paste(prefix, suffix, sep="")

for (i in GSM){
  getGEOSuppFiles(i, makeDirectory = FALSE, fetch_files = TRUE)
}

samplename <- c(rep('AD_FUS', 12), 'CTL_FUS', 'AD_FUS', 'AD_FUS', 'CTL_FUS', 'CTL_FUS', 'AD_FUS', 'AD_FUS', 'CTL_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 5), 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 9), 'CTL_FUS', rep('AD_FUS', 7), 'CTL_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 4), 'CTL_FUS', rep('AD_FUS', 5), 'CTL_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', 'CTL_FUS', 'AD_FUS', 'CTL_FUS', 'AD_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 7), 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 5), 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', 'AD_FUS', 'AD_FUS', 'CTL_FUS', 'CTL_FUS', 'AD_FUS', 'AD_FUS', 'CTL_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 7), 'CTL_FUS', 'CTL_FUS', 'AD_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 5), 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', 'CTL_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 13), 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', rep('AD_FUS', 2), 'CTL_FUS', 'AD_FUS', 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 2), 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', rep('AD_FUS', 2), 'CTL_FUS', rep('AD_FUS', 8), 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 4), 'CTL_FUS', rep('AD_FUS', 7), 'CTL_FUS', rep('AD_FUS', 2), 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 6), 'CTL_FUS', rep('AD_FUS', 2), 'CTL_FUS', rep('AD_FUS', 2), 'CTL_FUS', 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 15), 'CTL_FUS', 'AD_FUS', 'CTL_FUS', rep('AD_FUS', 6), 'CTL_FUS', rep('AD_FUS', 16), 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', rep('AD_FUS', 2), 'CTL_FUS', rep('AD_FUS', 3), 'CTL_FUS', 'AD_FUS', 'CTL_FUS', 'CTL_FUS', 'CTL_FUS', rep('AD_FUS', 5))

file.rename(list.files(pattern="*.tsv.gz"), paste(GSM, samplename, '.tsv.gz', sep="_"))

#------------------------------------------------------------------------

prefix <- 'GSM'
suffix <- c(seq(3143295, 3143323), seq(4094428, 4094473))
GSM <- paste(prefix, suffix, sep="")

for (i in GSM){
  getGEOSuppFiles(i, makeDirectory = FALSE, fetch_files = TRUE)
}

samplename <- c('CTL_SN', 'CTL_SN', 'PD_SN', rep('CTL_SN', 3), rep('PD_SN', 6), 'CTL_SN', 'CTL_SN', 'PD_SN', 'PD_SN', 'CTL_SN', rep('PD_SN', 6), 'CTL_SN', 'CTL_SN', 'PD_SN', 'CTL_SN', 'PD_SN', 'CTL_SN', rep('CTL_AM', 8), rep('PD_AM', 15), rep('CTL_MTG', 9), rep('PD_MTG', 14))

file.rename(list.files(pattern="*.txt.gz"), paste(GSM, samplename, '.txt.gz', sep="_"))

#------------------------------------------------------------------------

prefix <- 'GSM'
suffix <- seq(3984151, 3984186)
GSM <- paste(prefix, suffix, sep="")

for (i in GSM){
  getGEOSuppFiles(i, makeDirectory = FALSE, fetch_files = TRUE)
}

samplename <- c(rep('PD_PCx', 24), rep('CTL_PCx', 12))

file.rename(list.files(pattern="*.tab.gz"), paste(GSM, samplename, '.tab.gz', sep="_"))

#------------------------------------------------------------------------

prefix <- 'GSM'
suffix <- seq(3014964, 3014979)
GSM <- paste(prefix, suffix, sep="")

for (i in GSM){
  getGEOSuppFiles(i, makeDirectory = FALSE, fetch_files = TRUE)
}

samplename <- c(rep('CTL_CIN', 8), rep('PD_CIN', 8))
samplename <- paste(GSM, samplename, sep="_")

file.rename(list.files(pattern="*.txt.gz"), paste(samplename, 'txt.gz', sep="."))
