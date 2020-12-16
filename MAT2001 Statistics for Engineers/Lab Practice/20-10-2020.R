### 1-way classification
df=read.csv("F:\\2) Second Year 2020-2021\\Fall semester 2020-2021\\MAT2001 Statistics for Engineers\\Lab Practice\\anova.csv")
r=c(t(as.matrix(df)))
f=c("Tech-A","Tech-B","Tech-C","Tech-D")
k=4  # number of columns
n=5  # number of rows
te = gl(k,1,k*n,factor(f))
cr = aov(r~te)
summary(cr)

### 2-way classification
df1=read.csv("F:\\2) Second Year 2020-2021\\Fall semester 2020-2021\\MAT2001 Statistics for Engineers\\Lab Practice\\anova_2way.csv")
r1=c(t(as.matrix(df1)))
f=c("A","B","C","D","E","F")
blocks = gl(4,6)
treatments = gl(6,1,24)
rbfit = aov(r1~blocks+treatments)
summary(rbfit)

