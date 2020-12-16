### Case-3 (Test of significance of difference between the sample and the population mean)
########################################## Problem-1 ##########################################
xbar = 9900
mu   = 10000
sig  = 120
n    = 30
alpha = 0.05
z     = (xbar-mu)/(sig/sqrt(n))
print(z)

# Left-tailed test
left_z_alpha = qnorm(alpha)  
print(left_z_alpha)
left_z_alpha = qnorm(1-alpha,lower.tail = F)
print(left_z_alpha)

# Right tailed test
right_z_alpha = qnorm(1-alpha)          
print(right_z_alpha)
right_z_alpha = qnorm(alpha,lower.tail = F)
print(right_z_alpha)

if (abs(z)<abs(left_z_alpha)) {
print("H0 is accepted")
} else {
print("H0 is rejected") }



print(pnorm(z))



print(pnorm(z,lower.tail = F))
##############################################################################################

########################################## Problem-2 ##########################################
xbar = 2.1
mu   = 2
sig  = 0.25
n    = 35
alpha = 0.05
z     = (xbar-mu)/(sig/sqrt(n))
print(z)

# Left-tailed test
left_z_alpha = qnorm(alpha)  
print(left_z_alpha)
left_z_alpha = qnorm(1-alpha,lower.tail = F)
print(left_z_alpha)

# Right tailed test
right_z_alpha = qnorm(1-alpha)          
print(right_z_alpha)
right_z_alpha = qnorm(alpha,lower.tail = F)
print(right_z_alpha)

if (abs(z)<abs(left_z_alpha)) { print("H0 is accepted") 
} else { print("H0 is rejected") }
##############################################################################################

########################################## Problem-3 ##########################################
xbar = 14.6
mu   = 15.4
sig  = 2.5
n    = 35
alpha = 0.05
z     = (xbar-mu)/(sig/sqrt(n))
print(z)

# Left-tailed test
left_z_alpha = qnorm(alpha)  
print(left_z_alpha)
left_z_alpha = qnorm(1-alpha,lower.tail = F)
print(left_z_alpha)

# Right tailed test
right_z_alpha = qnorm(1-alpha)          
print(right_z_alpha)
right_z_alpha = qnorm(alpha,lower.tail = F)
print(right_z_alpha)

# 2-tailed test
two_z_alpha = qnorm(1-alpha/2)

if (abs(z)<abs(two_z_alpha)) { print("H0 is accepted") 
} else { print("H0 is rejected") }
##############################################################################################

## Case-6 (P-value method)
########################################## Problem-4 ##########################################
xbar = 14.6
mu   = 15.4
sig  = 2.5
n    = 35
alpha = 0.05
z     = (xbar-mu)/(sig/sqrt(n))
print(z)

# Left-tailed test
left_z_alpha = qnorm(alpha)  
print(left_z_alpha)
left_z_alpha = qnorm(1-alpha,lower.tail = F)
print(left_z_alpha)

# Right tailed test
right_z_alpha = qnorm(1-alpha)          
print(right_z_alpha)
right_z_alpha = qnorm(alpha,lower.tail = F)
print(right_z_alpha)

# 2-tailed test
two_z_alpha = qnorm(1-alpha/2)

if (abs(z)<abs(two_z_alpha)) { print("H0 is accepted") 
} else { print("H0 is rejected") }

########################################## Problem-4 ##########################################
## (Case-1 Between two population proportions)
P   = 0.6
Q   = 1-P
p   = 85/148
alpha = 0.05
n   = 148

z = (p-P)/sqrt((P*Q)/n)  # test Statistics
z_alpha = qnorm(alpha)   # Left tailed test

if (abs(z)<abs(two_z_alpha)) { print("H0 is accepted") 
} else { print("H0 is rejected") }
############################################################################################

########################################## Problem-5 ##########################################
P   = 0.12   # Population proportion
Q   = 1-P
p   = 30/214 # sample proportion
alpha = 0.05
n   = 214

z = (p-P)/sqrt((P*Q)/n)    # test Statistics
print(z)
z_alpha = qnorm(1-alpha)   # Right tailed test
print(z_alpha)

if (abs(z)<abs(two_z_alpha)) { print("H0 is accepted") 
} else { print("H0 is rejected") }

############################################################################################

########################################## Problem-6 ##########################################
P   = 0.5   # Population proportion
Q   = 1-P
p   = 12/20 # sample proportion
alpha = 0.05
n   = 20

z = (p-P)/sqrt((P*Q)/n)    # test Statistics
print(z)
z_alpha = qnorm(1-alpha/2)   # Right tailed test
print(z_alpha)

if (abs(z)<abs(two_z_alpha)) { print("H0 is accepted") 
} else { print("H0 is rejected") }

############################################################################################
# Sum-3
P=0.12
Q=1-P
p=30/214
n=214
z=(p-P)/(sqrt((P*Q/n)))
print(qnorm(1-0.05))           # right tailed 
print(pnorm(z,lower.tail=F))
print(prop.test(30,214,0.12,alt = "greater",correct=FALSE))
##################





