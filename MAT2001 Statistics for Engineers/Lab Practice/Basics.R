x=c(1,2,3,4,5)
print(x)

## Application of vectors
## 1) Element wise multiplication
print(c(1,2,3,4,5)*2)  # 2  4  6  8 10
print(c(1,2,3,4,5)^2) # 1  4  9 16 25

print(c(1,2,3,4)*c(2,4))  # 2  8  6 16
print(c(1,2,3,4)^c(2,4))  # 1  16   9 256

print(c(1,2,3,4)*c(2,4,6,8)) # 2  8 18 32
print(c(1,2,3,4)+10)         # 11 12 13 14

#3) Integer division and Modulus division
print(c(1,2,3,4)%/%2) # Quotient --> 0 1 1 2
print(c(1,2,3,4)%%2) # Remainder --> 1 0 1 0

# 4) Minimum and Maximum
print(max(9,2,3,5,31))    # 31
print(max(c(9,2,3,5,31))) # 31  Both are same 

print(min(9,2,3,5,31))  # 2

# 5) Inbuilt functions
print(abs(-12))
print(abs(c(-12,23,-43,90,100,2)))

print(sqrt(4))  # 2
print(sqrt(5))  # 2.236068

print(sum(c(1,2,3,4)))  # 10
print(prod(c(1,2,3,4))) # 24

print(round(1.23)) # 1
print(round(1.7))  # 2

print(log(2))   # natural log to the base e
print(log10(2)) # normal log  to the base 10
print(log(2,base=3)) # Preferable log with the bases

## Complex functions
a = 3+8i
print(Re(a))
print(Im(a))
print(Conj(a))
print(Mod(a))
print(Arg(a))
