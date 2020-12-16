# Create a matrix 
# The elements are eneterd along column-wise
x = matrix(nrow=2,ncol=2,data=c(10,20,30,40))

# Accessing the matrix elements
x[2,2] = 100

# How to add elements row-wise???
y = matrix(nrow=3,ncol=2,data=c(2,4,6,8,10,12),byrow=TRUE)

# Specific properties of matrix
print(dim(y)) # (row,column)
print(nrow(y))
print(ncol(y))

print(mode(y))  # Types of storage
print(attributes(y))  # Dimension of a matrix 

# Construction of a diagonal matrix
x = diag(100,nrow=2,ncol=2) # 100 will be in diagonal

# Transpose of a matrix
print(y)
print(t(y))

# Multiplication of a matrix with a constant
print(4*y)

# Matrix multiplication
a = matrix(nrow=3,ncol=2,data=c(10,20,30,40,50,60),byrow=TRUE)
b = matrix(nrow=2,ncol=2,data=c(50,60,70,80),byrow=TRUE)
c = a%*%b

