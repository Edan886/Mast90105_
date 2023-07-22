#1.求概率累计和
#1.1正常公式
x = 1:60
pmf = x^ 2/73810
p=sum(pmf[30:50])
m1=sum(x*pmf)
m2 = sum(pmf/x^ 2)
mgf = sum(pmf*exp(-0.05*x))#.    E(e^tx)=sum(pmf*exp(t*x))
mgf
#1.2排列组合
x=0:100#值！！！！！

pmf=choose(200-x,100)*2^(x-200)
p=sum(pmf[11:101])#索引！！！！！！
p
p=sum(pmf[11:101])
p
x[10]
pmf[10]

#2.期望
m1=sum(x*pmf)
m1

mgf = sum(pmf*exp(-0.05*y))



attach(cars)

boxplot(c(dist, speed))
summary(dist)
mean(speed); sd(speed)
plot(speed, dist)

out=lm(dist~speed)
out$coef
plot(out$residuals, speed)
qexp(0.975,2)
((16^2)/(16^2+1))^0.25
1-0.99^4


#计算连续型区间概率！！！！！
f <- function(x) {exp(-2*x) + exp(-3*x) + exp(-6*x)}
prob <- integrate(f, 0.5, 0.9)
prob$value

#计算期望
f_x <- function(x) {x * (exp(-2*x) + exp(-3*x) + exp(-6*x))}
expected_value <- integrate(f_x, 0, Inf)
expected_value$value


