#setwd("D:/RStudio_work") 改成你们的目录
library(tidyverse)
data<-read.csv("happiness_train_clean.csv")
for (i in seq_along(data))
{
  if(length(table(data[[i]]))<35)
    data[[i]]<-factor(data[[i]])
}
data$id<-as.character(data$id)
data$family_m<-as.integer(data$family_m)
data$house<-as.integer(data$house)
data$car<-as.integer(data$car)
type<-vector("character",ncol(data))

#下面是用来看变量类型的，可删去
#for (i in seq_along(data))
#{
#  type[i]<-class(data[[i]])
#}
#date_type<-data.frame(names=colnames(data),type=type)
#date_type

