######### Binomial Distribution ##############
# dbinom(x,size,probability) 
# This function gives the probability density function at each point
cat('At P(X=7) : ',dbinom(7,size=10,prob=0.4))

# pbinom(x,size,probability)
# This function gives the cumulative probability of an event. It is a single value representing the probability.
cat('P(X<=3) : ',pbinom(3,size=10,prob=0.5))

# qbinom()
# This function takes the probability value and gives a
# number whose cumulative value matches the probability value
cat('What is P(X<=?)=0.17185',qbinom(0.171875,size=10,prob=0.5))

# rbinom()
# This function generates required number of random values of given probability from a given sample

## Problem-3
#P(X>2)=1-P(X<=2)
cat('P(X>2) : ',1-pbinom(2,size=50,prob=0.12))

## Problem-4
cat('All 30 works : ',dbinom(30,size=30,prob=0.9))
cat('At most 2 circuit do not work P(X>=27) : ',1-pbinom(27,size=30,prob=0.9))
cat('At most 2 circuit do not work P(X<=2)  : ',pbinom(2,size=30,prob=0.1))
cat('At most 2 circuit works P(X<=2) : ',pbinom(2,size=30,prob=0.9))

## Problem-5
cat('Exactly 2 defective P(X=2)    : ',dbinom(2,size=20,prob=0.1))
cat('Atleast 2 defectives P(X>=2)  : ',1-dbinom(1,size=20,prob=0.1))
cat('Between 1 and 3 are defective P(1>=X<=3) : ',sum(dbinom(1:3,size=20,prob=0.1)))

## Problem-6
cat('All are good bulbs P(X=20) : ',dbinom(20,size=20,prob=0.9))
cat('Atmost 3 bulbs are defective P(X<=3) : ',pbinom(3,size=20,prob=0.1))
cat('Exactly 3 bulbs are defective P(X=3) : ',dbinom(3,size=20,prob=0.1))

### Problem-7
cat('P(X<8) : ',pbinom(7,size=20,prob=0.5))
cat('P(X>12) = 1-P(X<=12) : ',1-pbinom(12,size=20,prob=0.5))
cat('P(8<=X<=1) : ',sum(dbinom(1:8,size=20,prob=0.5)))

############ Poison Distribution ##############
### Problem-1
cat('O-jobs P(X=0) : ',dpois(0,lambda = 2))
cat('Exaclty 2 jobs P(X=2) ',dpois(2,lambda=2))
cat('At-most 3 arrivals P(X<=3) ',ppois(3,lambda=2))

### Problem-2
cat('Probability of getting at-least 5 heads P(X>=5)=1-P(X<5) : ',1-ppois(4,lambda=0.5))
cat('Probability of getting exactly 5 heads P(X=5) : ',dpois(5,lambda=0.5))
cat('Probability of getting between 4 and 6 heads  : ',sum(dpois(4:6,lambda=0.5)))


n=5
p=0.1
print("At P(X=5)")
print(dbinom(5,n,p))

print("At P(X=3)")
print(dbinom(3,n,p))

print("At P(X=1)")
print(dbinom(1,n,p))

# Using loop 
sum=0
for(i in 0:5)
{
  sum = sum + dbinom(i,n,p)
}

# Using inbuilt function
print(sum(dbinom(0:5,n,p)))   # P(X<=5)
print(sum(dbinom(0:3,n,p)))   # P(x<=3)
print(sum(dbinom(0:1,n,p)))   # P(x<=1)

# Gives cumulative probability value upto X
print(pbinom(0:5,n,p))   # P(X<=5)
print(pbinom(0:3,n,p))   # P(x<=3)
print(pbinom(0:1,n,p))   # P(x<=1)

print(qbinom(1,n,p))
print(qbinom(0.99954,n,p))
print(qbinom(0.91854,n,p))

print(rbinom(3,5,0.1))


n=15
p=0.05
print(dbinom(3,n,p))
print(sum(dbinom(0:3,n,p)))

n=20
q=0.1
p=1-q
print(dbinom(0,n,p))
print(sum(dbinom(0:3,n,p))
print(dbinom(3,n,p))



m=5
print(dpois(1,m)) # P(x=1)
print(ppois(10,m)) # P(x<=10)

print(sum(dpois(3:7,m)))       # P(3<=x<=7)
print(ppois(7,m)-ppois(2,m))

print(1-ppois(6,m)) # P(x>=7) = 1-p(x<7) So only upto 6
