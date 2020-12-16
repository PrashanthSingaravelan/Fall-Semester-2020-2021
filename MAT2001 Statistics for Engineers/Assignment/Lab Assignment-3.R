## 1st question
print("P[All are good bulbs]")
print(dpois(0,lambda = 2))
print("P[Atmost 3 bulbs are defective]")
print(ppois(3,lambda = 2))
print("P[Exactly 3 bulbs are defective] : ")
print(dpois(3,lambda = 2))





## 3rd question
print("More than 2150 hours")
print(1-pnorm(2150,mean=2040,sd=60)*2000)

print("Less than 1950 hours")
print(pnorm(1950,mean=2040,sd=60)*2000)

print("more than 1920 hours but less than 2160 hours")
print((pnorm(2160,mean=2040,sd=60)-pnorm(1920,mean=2040,sd=60))*2000)



### 2nd question
# dpois --> Probability density function
print("Getting exactly 3 balls")
print(dpois(3,lambda=3))

# ppois --> Cumulative probability function
print("Not more than 3 balls in the sample")
print(ppois(3,lambda=3))

