# Sum-1 (Case-3)
sample_mean     = 46500
population_mean = 50000
sample_sd     = 9800
population_sd = 8000
n=28
z_alpha = abs(qnorm(1-0.05,lower.tail = FALSE))
z       = abs(((sample_mean-population_mean)/population_sd) / (sqrt(n)))
ifelse(z_alpha>z,"H0 is accepted","H0 is rejected") 



# Sum-2 (Case-2)
p1 = 0.20
p2 = 0.15
n1 = 900
n2 = 1600
P = ((n1*p1)+(n2*p2))/(n1+n2)
Q = 1-P
z_alpha = abs(qnorm(1-0.05,lower.tail = FALSE))
z       = abs((p1-p2)/(sqrt((P*Q)*(1/n1 + 1/n2))))
ifelse(z_alpha>z,"H0 is accepted","H0 is rejected") 




# Sum-3 (Case-2)
p1 = 0.21
p2 = 0.18
n1 = 200
n2 = 100
P = ((n1*p1)+(n2*p2))/(n1+n2)
Q = 1-P
z_alpha = abs(qnorm(1-0.05,lower.tail = FALSE))
z       = abs((p1-p2)/(sqrt((P*Q)*(1/n1 + 1/n2))))
ifelse(z_alpha>z,"H0 is accepted","H0 is rejected") 

