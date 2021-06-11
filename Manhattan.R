#Load the sample data
setwd("C:/Users/rstil2/Downloads")
twol<-read.table("sample.cmh", header = FALSE)

#Name and rearrange columns
colnames(twol) <- c("BP", "CHR", "SNP", "P")
twol <- twol[c(3,2,1,4)]

levels(twol$CHR) <- sub("2L", "1", levels(twol$CHR))

#Transform column from character to numeric values
twol$CHR <- 2

#Create a grey/black manhattan plot of the p-values from the CMH test
#install.packages("qqman")
require(qqman)
manhattan(twol, suggestiveline = F, genomewideline = F)
