set.seed(1)
options(digit=6)
n=10^6
x=runif(n,min=0,max = 1)
y=runif(n,min=0,max = 1)
(w=sum(x^2+y^2<1))
(est=w/250000)
(error=abs(est-pi))

rw<-function(size,n=10^6){
  for(i in 1:size){
    x<-runif(n,min = 0,max = 1)
    y<-runif(n,min = 0,max = 1)
    w[i]=sum(x^2+y^2<1)
  }
  return(w)
}
w<-rw(50)
(est=mean(w)/250000)
(error=abs(est-pi))
