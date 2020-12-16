################# Problem-1 ############################
## Karl Pearson(Correlation coefficient)
x=c(78,36,98,25,75,82,90,62,65,39)
y=c(84,51,91,60,68,62,86,58,53,47)

rxy = var(x,y)/(sqrt(var(x))*sqrt(var(y)))  ## rxy = Covariance(x,y)/( sqrt(var(x)) * sqrt(var(y)) )
cat('Karl Pearson coefficient : ',rxy)

## Direction function
cat('Karl Pearson coefficient : ',cor(x,y)) 
print(cor.test(x,y))
print(cor.test(x,y,method='pearson'))

################# Problem-2 ##########################
x1=c(10,14,18,22,26,30)
y1=c(18,12,24,6,30,36)
print(cor(x1,y1))

################# Problem-3 ###########################
x2=c(10,15,12,17,13,16,24,14,22)
y2=c(30,42,45,46,33,34,40,35,39)
print(cor(x2,y2))           
print(cor.test(x2,y2,method='pearson'))   # KarlPearson's solution
print(cor.test(x2,y2,method="spearman"))  # Spearan's solution 

################# Problem-4 ###########################
x3=c(68,64,75,50,64,80,75,40,55,64)
y3=c(62,58,68,45,81,60,68,48,50,70)
print(cor(x3,y3)) 
print(cor.test(x3,y3,method="pearson")) 
print(cor.test(x3,y3,method="spearman",exact=F)) # without rectification

################# Problem-5 ############################
## Linear Regression ####
a=1:9   # a=seq(1,8)
b=c(9,8,10,12,11,13,14,16,15)
re1 = lm(a~b)  # a on b
print(re1)

re2 = lm(b~a) # b on a
print(re2)

print(summary(re1))
print(summary(re2))

###### Simple Linear regression
e=c(65,66,67,67,68,69,70,72)
f=c(67,68,65,68,72,72,69,71)
print(lm(e~f)) # e on f
print(lm(f~e)) # f on e

###### Multiple Regression 
f=c(20,23,25,27,21,29,22,24,27,35)
g=c(8,13,8,18,23,16,10,12,14,20)
h=c(28,23,38,16,20,28,23,30,26,32)
print(lm(f~(g+h)))

