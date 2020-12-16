#################### Raw data #######################
## 1st Problem
x = c(18,19,19,19,19,20,20,20,20,20,21,21,21,21,22,23,24,27,30,36)
cat('The mean of all the students   : ',mean(x))
cat('The median of all the students : ',median(x))

under_25 = x[x<25]
cat('The median age of all students under 25 : ',median(under_25))

xr = table(x)
print(xr)
mode = which(xr==max(xr))
cat('The modal age of all the students : ',mode)

############(Discrete frequency distribution)############
## 2nd problem  
x = c(0,1,2,3)
f = c(8,11,5,1)
y = rep(x,f)     # rep(value,number_of_times)
print(y)
mean   = (sum(y)/length(y))
median = median(y)
cat('The mean of the distribution   : ',mean)
cat('The median of the distribution : ',median)
########################################################

#############(Continuous frequency distribution)############
## 3rd problem
# Mean
x = seq(147.5,182.5,5)
freq = c(4,6,28,58,64,30,5,5)
mean = sum(x*f)/sum(f)
cat('The mean is : ',mean)

# Median
cf = cumsum(freq)
N  = sum(freq)            # total frequency
median_class = min(which(cf>N/2))
c      = 5                     # width of the median class
m      = cf[median_class-1]    # cummulative frequency of the preceding median class
f      = freq[median_class]    # frequency of the median class
L      = x[median_class]-c/2   # lower limit of the median class
median = L+(((N/2)-m)/f)*c 
cat('The median is : ',median)

# 1st quartile
quartile_class = min(which(cf>3*N/4))
c   = 5
m   = cf[quartile_class-1]
f   = freq[quartile_class]
L   = x[quartile_class]-c/2
ql1 = L+(((N/4)-m)/f)*c
cat('1st quartile : ',ql1)

# 3rd quartile
quartile_class = min(which(cf>3*N/4))
c   = 5
m   = cf[quartile_class-1]
f   = freq[quartile_class]
L   = x[quartile_class]-c/2
ql3 = L+(((3*N/4)-m)/f)*c
cat('3rd quartile : ',ql3)

# Mode
modal_class = which(freq==max(freq))
f0   = freq[modal_class]    # frequency of the modal class
f1   = freq[modal_class-1]  # frequency of the preceding modal class
f2   = freq[modal_class+1]  # frequency of the succeeding modal class
L    = x[modal_class]-c/2   # lower limit of the modal class
mode = L+((f0-f1)/(2*f0-f1-f2))*c
cat('The mode is : ',mode)
##########################################################


########### Range #################
a=c(1,2,3,4,5,5,5,6,7,8)
cat('Range of a ',range(a))
cat('Difference between maximum and minimum : ',diff(range(a)))

## Using max() and min()
cat('Range : ',max(a)-min(a))
  
############ Quartile ###########
a = c(1,2,3,4,5,5,5,6,7,8)
cat('Interquantile range : ')
print(IQR(a))

cat('Quantile : ')
print(quantile(a))

cat('1st quantile')
print(quantile(a,0.25))

cat('2nd quantile')
print(quantile(a,0.75))

############ Measures of Dispersion #############
x=c(1.2,1.4,1.3,1.6,1.0,1.5,1.7,1.1,1.2,1.3)
cat('Range : ',range(x))
cat('Difference of Range : ',diff(range(x)))
cat('Variance : ',var(x))
cat('Standard Deviation : ',sd(x))
cat('Quantile ')
print(quantile(x))
cat('Inter quantile Range : ',IQR(x))

### Raw data #############
y = abs(x-mean(x))
cat('Mean Deviation about Mean : ',sum(y)/length(y))

y = abs(x-median(x))
cat('Mean Deviation about Median : ',sum(y)/length(y))





