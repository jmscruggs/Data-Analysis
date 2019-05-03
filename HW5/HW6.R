# James Scruggs
# M01255052
# 3/13/18
# HW5

#-----------(part 1)----------
rbinom(n=15, size=20, p=0.66) #To simulate flipping unfair coin 20 times, then repeating 10 times

V <- rbinom(n=100, size=7, p=0.3)

barplot(table(V))

#-----------(part 2)----------
sum(pbinom(12, size=20, prob=0.5)) #prob of values less than x.
sum(pbinom(7, size=20, prob=0.5))

pbinom(12, size=20, prob=0.5)-pbinom(7,size=20, prob=0.5) #prob of values between a set.

#-----------(part 3)----------
qbinom(0.90, size=20, prob=0.5) #gives the smallest x value 
#so that the probability of being less than or equal to x is at least p

#-----------(part 4)----------
plot(0:10,dbinom(0:10, size=20, prob=0.1),main="prob = 0.1", type='h')
plot(0:10,dbinom(0:10, size=20, prob=0.5),main="prob = 0.5", type='h')
plot(0:10,dbinom(0:10, size=20, prob=0.9),main="prob = 0.9", type='h')
plot(0:10,dbinom(0:10, size=10, prob=0.5),main="prob = 0.5, size = 10", type='h')

#-----------(part 5)----------
rnorm(10,100,15)

#-----------(part 6)----------
pnorm(120, mean=100,sd=15) #prob less than or equal to x
1-pnorm(120,mean=100,sd=15) #prob greater than x

pnorm(120, mean=100, sd=15)-pnorm(80, mean=100, sd=15)

#-----------(part 7)----------
qnorm(p=.90,mean=100,sd=15) #x value in 90th percentile

#-----------(part 8)----------
xvalues <- seq(from=35,to=65, by=1)
plot(xvalues, dnorm(xvalues, mean=50, sd=10), type="l")
