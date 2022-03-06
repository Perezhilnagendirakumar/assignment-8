install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
library(ddply)
install.packages("plyr")
library(data.table)
library(plyr)
x<-read.table(file.choose(),header=TRUE, sep=",")# imported the data sample.txt 
x
library(plyr)
y = ddply(x,"Sex",transform, Grade.Average=mean(Grade))# Transforming Sex attribute and calculating the grade average
y
write.table(y,"Sorted_Average",sep=",")# converting into csv file 
newx = subset(x,grepl("[iI]",x$Name))#filter the names in the given list that contains i 
newx
