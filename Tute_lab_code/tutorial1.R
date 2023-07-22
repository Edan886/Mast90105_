setwd('/Users/guanmuhan/Desktop/mast')#保存文件路径

install.packages("ggplot2")

library("ggplot2")

a=3
4*a

x=c(1,2,3)#vector
library(Matrix)#ma

y <- matrix(data=c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)

z=matrix(data=c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)

#extract
z
z[3]#extract
z[1]#start with 1 not 0
z[1,3]#第一行第三个

y[c(2,3),c(2,3)]#提取2，3行  2，3 列 即（2，2）（3，3）

#分布拟合
x<-rnorm(n=1000,mean=1,sd=2)
hist(x,col="red")

#NA
x=c(1,2,3,NA)
mean(x)
mean(x,na.rm=TRUE)#na is removed 
x[which(x>2)]=NA# 将大于某个数的设为另一个数
x

glmnet nnet ggplot 
