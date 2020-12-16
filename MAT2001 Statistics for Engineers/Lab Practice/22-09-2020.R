# Sequence of numbers between -10 and 10 incrementing by 0.1
x=seq(-10,10,by=.1)
y=dnorm(x,mean=2.5,sd=0.5) # mean=2.5 and standard deviation=0.5
plot(x,y) # dnorm graph

x=seq(-10,10,by=0.2)
y=pnorm(x,mean=2.5,sd=2)
plot(x,y) # pnorm graph

x=seq(0,1,by=0.02)
y=qnorm(x,mean=2,sd=1)
plot(x,y) # qnorm graph

y=rnorm(50)
hist(y,main='Normal Distribution')

## Program-1 ##
x = seq(15,105,length=200)
y = dnorm(x,mean=60,sd=15)
plot(x,y,type="l",xaxt="n")
axis(1,at=c(15,30,45,60,75,90,105))

## Problem-1
cat('P(X>=310) = 1-P(X<310) : ',1-pnorm(309,mean=527,sd=105))

## Problem-2
cat('P(80<x<95) : ',sum(dnorm(81:94,mean=527,sd=105)))

## Problem-3
cat('P(69<=X<=72) = ',(pnorm(72,mean=70,sd=5)-pnorm(69,mean=70,sd=5))*1000)
cat('P(x<=69)     = ',(pnorm(69,mean=70,sd=5))*1000)
cat('P(X>72)=1-P(X<=72) =',(1-pnorm(72,mean=70,sd=5))*1000)

## Problem-4
cat('P(X>2150)=1-P(X<=2150) : ',(1-pnorm(2150,mean=2040,sd=60))*2000)
cat('P(X<=1950)       : ',pnorm(1950,mean=2040,sd=60)*2000)
cat('P(1920<=X<=2160) : ',(pnorm(2160,mean=2040,sd=60)-pnorm(1920,mean=2040,sd=60))*2000)





## Bulbs 
1-pnorm(834,800,40)
pnorm(834,800,40)-pnorm(778,800,40)

## Saving bank account details
(1-pnorm(200,150,50))*100
(pnorm(170,150,50)-pnorm(120,150,50))*100
pnorm(75,150,50)*100

1-pnorm(310,527,105)
pnorm(95,mean=100,sd=15)-pnorm(80,100,15)


