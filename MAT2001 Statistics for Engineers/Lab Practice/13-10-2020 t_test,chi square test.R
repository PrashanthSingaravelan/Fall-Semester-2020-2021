############## Problem-1 #################
x=c(5,6,8,1,12,4,3,9,6,10)
y=c(2,3,6,8,10,1,2,8)
t.test(x,y)  # t-test 
t.test(x,y,alt="greater") # right tail
t.test(x,y,alt="less")    # left tail
#########################################

############## Problem-2 ################
x = c(17,20,21,24,15,16,10,9,19,26)
y = c(6,25,28,11,12,19,23,15,16,14)
t.test(x,y)
t.test(x,y,alt="greater") # right tail

############## Problem-3 ################
x = c(12.9,13.5,12.8,15.6,17.2,19.2,12.6,15.3,14.4,11.3)
y = c(12.0,12.2,11.2,13.0,15.0,15.8,12.2,13.4,12.9,11.0)
t.test(x,y)
t.test(x,y,alt="less") # right tail
#########################################

##################### chi-square test #######################

################## Problem-1 ########################
data = matrix(c(35,42,61,48,51,68),ncol=3,byrow = T)
chisq.test(data)
#########################################

################## Problem-5 ########################
plants = c(20,10,7,4)
chisq.test(plants,p=c(9/16,3/16,3/16,1/16))
#########################################

################## Problem-6 ########################
###(Binomial Distribution)
x = c(5,4,3,2,1,0)
n = 5   # Number of childrens in a family
N = 320 # Number of families
P = 0.5 # Probability-value either boy/girl
obf = c(14,56,110,88,40,12) # frequency value
df  = 5 # df=n-1
significance_level = 0.05 
confidence_level   = 0.95
chi_square_alpha = qchisq(confidence_level,df)  # table_value

# calculating the chi_square_value 
exf = dbinom(x,n,P)*N
chi_square = sum((obf-exf)^2/exf)

if (chi_square<chi_square_alpha) {
print('H0 is accepted')
} else {
print('H0 is rejected') }
#########################################

################## Problem-7 ########################
###(Binomial Distribution)
x = c(0,1,2,3,4,5)  # NUmber of heads observed
n = 5   # Number of attempt 
n0 = 6
N = 256 # Number of times a coin tossed
P = 0.5 # Probability-value either head/tail (binomial distribution)
obf = c(5,35,75,84,45,12) # frequency value
df  = n0-1 # df=n0-1
significance_level = 0.05 
confidence_level   = 0.95
chi_square_alpha = qchisq(confidence_level,df)  # table_value
cat('Chi-square-alpha : ',chi_square_alpha)

# calculating the chi_square_value 
exf = dbinom(x,size=n,prob=P)*N
chi_square = sum((obf-exf)^2/exf)
cat('Chi-square : ',chi_square)

if (chi_square<chi_square_alpha) {
  print('H0 is accepted')
} else {
  print('H0 is rejected') }
#########################################

################## Problem-8 ########################
###(Binomial Distribution)
n  = 4   # Number of coins
n0 = 5   # Number of observations
x = c(0,1,2,3,4)  # NUmber of heads observed
N = 160 # Number of times a coin tossed
P = 0.5 # Probability-value either head/tail (binomial distribution)
obf = c(17,52,54,31,6) # frequency value
df  = n0-1
significance_level = 0.05 
confidence_level   = 0.95
chi_square_alpha = qchisq(confidence_level,df)  # table_value
cat('chi_square_alpha : ',chi_square_alpha)

# calculating the chi_square_value 
exf = dbinom(x,size=n,prob=P)*N
chi_square = sum((obf-exf)^2/exf)
cat('chi_square : ',chi_square)

if (chi_square<chi_square_alpha) {
  print('H0 is accepted')
} else {
  print('H0 is rejected') }
###################################################################

################################## Problem-9 ########################
###(Poisson Distribution)
n = 6
x = c(0,1,2,3,4,5,6)
f = c(275,72,30,7,5,2,1)
lambda = (sum(f*x)/sum(f)) # mean
expf   = dpois(x,lambda)*sum(f)
significance_level = 0.05 
confidence_level   = 0.95
df = n-2

# In poisson distribution,
# sum(observed_frequency)=sum(expected_frequency)
cat('Sum of Observed frequency : ',sum(f))
cat('Sum of Expected frequency : ',sum((expf)))
## Subtract -1 from the observed frequency

cat('Observed frequency : ',f)
cat('Expected frequency : ',round(expf))

## The last 3 frequencies are <=5, so combine these frequencies in expected and observed

obf = c(275,72,30,7,14)
exf = c(242,117,28,6)
chi_square = sum(((obf-exf)^2)/exf)
cat('Chi-square-value : ',chi_square)

chi_square_alpha = qchisq(significance_level,df)
cat('chi-square-alpha value : ',chi_square_alpha)


if (chi_square<chi_square_alpha) {
  print('H0 is accepted')
} else {
  print('H0 is rejected') }
##########################################################################


############################### Problem-10 #################################
###(Poisson Distribution)
n = 6
df = n-2
x = c(0,1,2,3,4,5)
f = c(77,90,55,30,5,3)
lambda = (sum(f*x)/sum(f)) # mean
expf   = dpois(x,lambda)*sum(f)
significance_level = 0.05 
confidence_level   = 0.95

# In poisson distribution,
# sum(observed_frequency)=sum(expected_frequency)
cat('Sum of Observed frequency : ',sum(f))
cat('Sum of Expected frequency : ',sum(expf))
## Subtract -0.5 from the observed frequency

cat('Observed frequency : ',f)
cat('Expected frequency : ',expf)

## The last 1 expected frequency is <5, so combine these frequencies in expected and observed

obf = c(77,90,55,30,7.5)
exf = c(74.49125,93.11406,58.19629,24.24845,9.472052)
chi_square = sum(((obf-exf)^2)/exf)
cat('Chi-square-value : ',chi_square)

chi_square_alpha   = qchisq(confidence_level,df)
cat('chi-square-alpha : ',chi_square_alpha)

if (chi_square<chi_square_alpha) {
  print('H0 is accepted')
} else {
  print('H0 is rejected') }
#################################################################################



x = c(12.9,13.5,12.8,15.6,17.2,19.2,12.6,15.3,14.4,11.3)
y = c(12.0,12.2,11.2,13.0,15.0,15.8,12.2,13.4,12.9,11.0)
t.test(x,y)
t.test(x,y,alt='less')

plants = c(20,10,7,4)
chisq.test(plants,p=c(9/16,3/16,3/16,1/16))
  
# Good ness of fit (chi-square)
x = c(5,4,3,2,1,0)
n=5
N=320
P=0.5
obf=c(14,56,110,88,40,12)
exf=dbinom(x,n,P)*320   # expected frequency
sum(obf)
sum(exf)
chisq=sum((obf-exf)*2/exf)
qchisq(0.95,5)

###########################################
x = c(0,1,2,3,4,5,6)
f = c(275,72,30,7,5,2,1)
Efx = sum(x*obf)
Ef = sum(obf)
lambda = Efx/Ef
expois = dpois(x,lambda)*sum(f)
f1 = round(expois)
sum(f)
sum(f1)
f-f1
E = c(242,117,28,5)  # Omitted unwanted data and added
O = c(275,72,30,15)
chisq = sum((O-E)^2/E)
df=2
qchisq(0.95,df)
print('H0 is accepted')
#########################################

x = c(0,1,2,3,4,5,6)
f = c(109,53,131,12,35,21,12)
Ef  = sum(f)
Efx = sum(f*x)
lambda = Efx/Ef
expois = dpois(x,lambda)*sum(f)
f1     = round(expois)
print(sum(f))
print(sum(f1))
print(f-f1)
O=c(109,53,131,12,35,33)
E=c(62,111,100,60,27,13)
cat('chi^square : ',chisq = sum((O-E)^2/E))
df=5
cat('chi^square_alpha : ',qchisq(0.95,df))
print('H0 is rejected')
########################################

