# Names: James Scruggs (Leader), Kyle, Paul, Brandon
# 2/27/18
# Group Project

#---------------(part 1)--------------
theta = 0.5
N=100
flips <- sample(c(0,1), size=100,replace=T,prob=c(1-theta,theta))
heads = (sum(flips))


#---------------(part 3)-------------
theta = 0.9
N=100
flips <- sample(c(0,1), size=100,replace=T,prob=c(1-theta,theta))
heads = (sum(flips))

#---------------(part 4)-------------
theta = 0.5
for(s in 1:100)
{
  set.seed = 10
  flips = sample(c(0,1), size=100,replace=T,prob=c(1-theta,theta))
  heads[s] = (sum(flips))
}
hist(heads,main="100 Tosses")

for(s in 1:1000)
{
  set.seed = 10
  flips = sample(c(0,1), size=100,replace=T,prob=c(1-theta,theta))
  heads[s] = (sum(flips))
}

hist(heads,main="1000 Tosses")

#-------------(part 5)---------------
sample.space = 1:6
theta=1/6
n<-sample(sample.space,size=100,replace=T,prob=c(theta,theta,theta,theta,theta,theta))
table(n)

n2<-replicate(2,sample(sample.space,size = 100,replace = TRUE,prob = c(theta,theta,theta,theta,theta,theta)))
sumn2<-apply(n2,1,sum)

#-------------(part 6)---------------
table(sumn2)
plot(table(sumn2))
n3<-replicate(2,sample(sample.space,size = 100000,replace = TRUE,prob = c(theta,theta,theta,theta,theta,theta)))
sumn3<-apply(n3,1,sum)

plot(table(sumn3))

#-----------(part 7)-----------------
birthday<-sample(1:365,size = 25,replace = TRUE, prob = rep(1/365,times=365))
table(birthday)

#-----------(part 8)-----------------
birthday<-sample(1:365,size = 25,replace = TRUE, prob = rep(1/365,times=365))
table(birthday)

#-----------(part 9)-----------------
birthday20<-replicate(20,sample(1:365,size = 25,replace = TRUE,prob = rep(1/365,times=365)))
apply(birthday20,2, table)
temp <- apply(birthday20,2,duplicated) # count number of repeats.
apply(temp,2,sum) 
sum(apply(temp,2,sum)==0)

#-----------(part 10)-----------------
birthday20<-replicate(20000,sample(1:365,size = 25,replace = TRUE,prob = rep(1/365,times=365)))
apply(birthday20,2, table)
temp <- apply(birthday20,2,duplicated) # count number of repeats.
apply(temp,2,sum) 
sum(apply(temp,2,sum)==0)
