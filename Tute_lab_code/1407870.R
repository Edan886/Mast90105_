#1(a)
k = 0:50
pmf=(2^k)/((2^51)-1)
p=sum(pmf[46:51])
#1(b)
m1=sum((k^2)*pmf)
m1
#1(c)
m2=sum(((k^2)^2)*pmf)
var=m2-m1^2
var
#1(d)
ln=log((k^2)+1)
m3=sum(ln*pmf)
m3



#2(a)
n=runif(10000, min= 0, max = 1)
x <- -1/(log(n))^5
m=sum(x*exp(-1/x^5)*5*x^(-6))
m
1-exp(-1)


#3(a)
attach(trees)
Volume = trees$Volume
Girth = trees$Girth
Height = trees$Height
boxplot(Volume, Girth,Height, names = c("Volume", "Girth","Height"),
        col = c("yellow", "orange","blue"))
#3(b)
summary(Volume)
summary(Girth)
summary(Height)
#3(c)
square=Girth^2
plot(square, Volume, xlab = "squared_Girth", ylab = "Volume")
#3(d)
tree_model = lm(Volume ~ square)
tree_model$coef
summary(tree_model)
#3(e)
sum(tree_model$coef*c(1,19^2))
#3(f)
plot(Height, Volume, xlab = "Height", ylab = "Volume")
