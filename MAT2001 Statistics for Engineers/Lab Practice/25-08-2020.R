A=c(17,19,87,52,21,93,27,32)
mean = mean(A)
MD=sum(abs(A-mean))/length(A)

median = median(A)
ME=sum(abs(A-median))/length(A)

mode = mode(A)
MM=sum(abs(A-mode))/length(A)



X=c(17,19,87,52,21,93,27,32)
Y=sort(X)
f=c(25,22,10,13,5,11,12,16)

mean = (sum(X*f)/sum(f))
Mdm = sum(abs(X-mean)*f)/sum(f)

cf= cumsum(f)
N=sum(f)
m=min(which(cf>N/2))
median = Y[m]

Mdmedian = sum(abs(X-median)*f)/sum(f)

n = which(f==max(f))
mode = X[n]

Mdmode = sum(abs(Y-mode)*f)/sum(f)
