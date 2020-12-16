# Power of a number
a=8
print(a**2)  # 8*8-->64
print(a^2)   # 8*8-->64

print(c(1,2,3,4,5)^2)     # All the values are powered in terms of 2
print(c(1,2,3,4)*c(3,4))  # 3  8  9 16
print(c(2,4,6,8)*c(-2,-4,-6,-8))  # The values are multiplied element-wise -4 -16 -36 -64
print(c(1,2,3,4)+5)       # All the values are added with 5

# Integer division (quotient)
print(c(2,4,6,8)%/%c(2,3))  # 1 1 3 2

# Modulo division (remainder)
print(c(2,4,6,8)%%c(2,3))   # 0 1 0 2

# Maximum and minimum function
print(max(c(2,4,5,1))) # 5
print(min(c(2,4,5,1))) # 1

# abs(),round(),sqrt(),sum(),prod()
print(abs(-2))           # 2
print(round(12.78))      # 13
print(sqrt(c(2,4,6,8)))  # 1.414214 2.000000 2.449490 2.828427
print(sum(c(2,4,6,8)))   # 20
print(prod(c(2,4,6,8)))  # 384

################ lograthemic function ##################S
# Natural log (ln --> log to the base e)
print(log(5))   # 1.609438

# Common log (log --> log to the base 10)
print(log10(5))        # 0.69897
print(log(5,base=10))  # 0.69897

# log(number,base=<number>) --> We can find the log of any number with any base
print(log(9,base=4))  # 1.584963


################ Complex functions #########################
a = 3+5i
print(Re(a))    # real part of a --> 3
print(Im(a))    # imaginary part of a --> 5
print(Conj(a))  # conjugate of a --> 3-5i
print(Mod(a))   # modulus of a  -->  5.830952
print(Arg(a))   # argument of a --> 1.030377

###############  Matrix  ##########################
x = matrix(nrow=3,ncol=3,data=c(2,4,6,3,6,9,5,10,15))  # Creating a matrix (elements are added column wise)
y = matrix(nrow=3,ncol=3,data=c(2,4,6,3,6,9,5,10,15),byrow=TRUE)  # Creating a matrix (elements are added row wise)
t = matrix(nrow=2,ncol=3,data=100) ## Creating a matrix of single data
d = diag(1,nrow=2,ncol=2)         ## Creating a diagonal matrix
x[2,3] # Accessing the matrix elements

## Properties of a matrix ##
print(dim(x))
print(attributes(x))
print(nrow(x))
print(ncol(x))
print(mode(x))  # types of storage
print(t(x))     # diagonal of a matrix
print(solve(x)) # Inverse of a matrix

print(x*4)   # multiplying a matrix with a constant term
print(y%*%y) # Matrix multiplication
print(y*y)   # Normal multiplication
print(crossprod(x)) # t(x)%*%x [transpose(martix) (matrix multiplication) matrix]
print(x+6*x) # addition of a matrix
print(6*x-x) # subtraction of a matrix

print(x[2,])  # second row of a matrix
print(x[,2])  # second column of a matrix



