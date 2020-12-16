library(ggplot2) 
theme_set(theme_minimal())
# Sin function
equation1 = function(x) {(sin(x))}
curve(equation1,from=-3*pi,to=3*pi,n=300,
      xlab='X-axis',ylab='Y-axis',col="red",lwd=2 )

# Cos function
equation2 = function(x) {(cos(x))}
curve(equation2,from=-3*pi,to=3*pi,n=300,
      xlab='X-axis',ylab='Y-axis',col="blue",lwd=2,add=TRUE)

legend("bottomright",c("sin(x)","cos(x)"),fill=c("red","blue"))

# Step-function
x = seq(1,6,1)
y = seq(10,70,10)
z = stepfun(x,y,0)
plot(z,ylim=c(0,70),verticals='FALSE',yaxs='i',xaxs='i',col='red',
     xlab='Hours worked',ylab='Amount charged',main='Step wise',yaxt='n')
     axis(2,at=seq(0,70,10),las=2)
     
# Mod function
x = seq(-10,10,1)
y = abs(x)
plot(x,y,type='l',xlim=c(-10,10),ylim=c(-10,10),
     axes=F,main='|x|')
axis(1,pos=0,las=1)
axis(2,pos=0,las=2)
     
# Parabola
equation3 = function(x) {(x^2)}
curve(equation3,from=-5,to=5,n=300,
      xlab='X-axis',ylab='Y-axis',col="red",lwd=2,
      main = 'Open upward Parabola')


## Eigen values and eigen vectors of a matrix
a = matrix(nrow=5,ncol=5,c(1,2,-8,14,7,13,24,17,5,9,7,32,
                           10,14,5,3,4,15,53,34,43,9,11,14,-10,4))
b = matrix(nrow=5,ncol=5,c(-10,12,11,4,2,9,21,7,13,8,17,2,
                           1,17,-19,2,7,5,3,4,15,1,4,-31,14))

print("Matrix-A")
print(a)

print("Matrix-B")
print(b)


print("Eigen values and eige vectors of Matrix-A and Matrix-B")
print(eigen(a))

print(eigen(b))

print(solve(a%*%b))        # Inverse of products of matrix
print(solve(b)%*%solve(a)) # Product of Inverses

matrix1 = 4*(a^5)-5*(a^3) + (a^2)
print(dim(matrix1))










