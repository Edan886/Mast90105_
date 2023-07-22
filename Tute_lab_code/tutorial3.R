dhyper(x=2,m=3,n=17,k=3)*1/17#k是抽样个数

sum(dhyper(x=2,m=3,n=17,k=2*1:9)*1/(20-2*1:9))


#2.1
dhyper(x=0,m=20,n=80,k=5)

#2.2
phyper(q=3,m=20,n=80,k=5)#累计概率

sum(dhyper(x=0:3,m=20,n=80,k=5))

#2.3
d=0:5
sum(d*dhyper(x=0:5,m=20,n=80,k=5))


#2.4
sum(d*dhyper(x=0:5,m=20,n=80,k=5))


#2.5
square_E_x=(sum(d*dhyper(x=0:5,m=20,n=80,k=5)))^2
E_x_square=sum((d^2)*dhyper(x=0:5,m=20,n=80,k=5))
var_x=E_x_square-square_E_x
var_x

#2.6
plot(d,dhyper(x=0:5,m=20,n=80,k=5))


10*log10(255)
