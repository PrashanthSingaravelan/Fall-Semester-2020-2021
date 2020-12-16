xl  =c(0,100,200,300,400,500,600)
freq=c(10,6,9,16,4,24,27)
xu  =c(100,200,300,400,500,600,700)

N    = sum(freq)
x    = (xl+xu)/2
fx   = mid*freq
cusum = 
y    = data.frame(xl,xu,x,freq,fx,cusum=cumsum(y[,'freq']))
### Mean
mean = sum(fx)/N
cat("Mean : ",mean)

## Median
median_index = min(which(cumsum>N/2))
xl[median_index]



MD_mean = sum(freq*(abs(mid-mean)))/N
n=N/2
f=min(y$freq[y$cf>=n])
m=max(y$cf[y$cf<n])
C=xu[1]-xl[1]
L=min(y$xl[y$cf>=(N/2)])
med=L+(((n-m)/f)*C)
MD_median=sum(freq*(abs(mid-med)))/N
f2=y$cf[which(y$f==f)+1]
mod=L+(((f-m)/(2*f-m-f2))*C)
MD_mod=sum(freq*(abs(mid-mod)))/N
