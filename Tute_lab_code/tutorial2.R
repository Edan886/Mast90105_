#p61 improvable line
#let Ai= the even that i lines of code can be improved 
#let B =the event that 5 lines of code could be improved from a random sample of 20
#goal:p(Ai|B)=(p(B|Ai)p(Ai))*p(B)
#p(B|Ai)=(c(i,5)*c(1000-i,15))/(1000,20) when i =5,6,...,985 otherwise p(B|Ai)=0
#0.9=p(A0)+p(A1)+...+p(A100)  p(Ai)=0.9/101 i=0...100
#0.1=p(A101)+p(A102)+...+p(A1000) p(Ai)=0.1/900 for i=101..1000
#p(B)=p(B|A0)*P(A0)+...+p(B|A1000)*P(A1000)

#define some ranges for the i's
i1=0:100
i2=101:1000

#let prb denote the probability of B i.e P(B)

prb= sum(dhyper(x=5,m=i1,n=1000-i1,k=20)*(0.9/101))+sum(dhyper(x=5,m=i2,n=1000-i2,k=20)*(0.1/900))

#let pr be the conditional probability pr(Ai|B)
pr=rep(0,1001)
pr[1:101]=dhyper(x=5,m=i1,n=1000-i1,k=20)*(0.9/101)/prb
pr[102:1001]=  dhyper(x=5,m=i2,n=1000-i2,k=20)*(0.1/900)/prb
pr
plot(x=0:1000,y=pr,xlab = "x",ylab = 'pmf',lwd=2,main = expression("Pr("~Lambda[i]~"|B)"))
sum(pr[1:101])

