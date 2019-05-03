# James Scruggs
# M01255052
# 2/20/18
# HW3

#------(part 1)----------
ti <- read.csv(file = "C:/Users/Michael Scruggs/Desktop/titanic3.csv", header=TRUE)
attach(ti)
hist(age)
hist(age,breaks=c(0,10,20,30,40,50,60,70,80))

#------(part 3)----------
L <- survived==0 # L is dead
died.age <- age[L]
hist(died.age,main="Histogram of Ages of Death",breaks=c(0,10,20,30,40,50,60,70,80)) # create the histogram of the dead

#------(part 4)----------
survived.age=age[!L] #negating L since it means dead.
hist(survived.age,main = "Histogram of Ages of Survival",breaks=c(0,10,20,30,40,50,60,70,80)) #create the histogram of the survived 

#------(part 6)----------
babyboom<-read.csv(file.choose(),header=TRUE)
attach(babyboom)
stripchart(Weight)

stripchart(Weight,method = "stack",pch=19) #pch darkens and shapes the plots circular. Not sure about stack
plot(Weight)

#-------(part 7)----------
stripchart(Weight~Sex,method="stack",pch=19)


#-------(part 9)----------
summary(Weight) # to get 5 number summary

#-------(part 10)---------
boxplot(Weight)

#-------(part 11)---------
boxplot(Weight~Sex)
female <- subset(babyboom, Sex==1, select=c(Weight)) #get subset of female weight data
male <- subset(babyboom, Sex==2, select=c(Weight)) #get subset of male weight data.
summary(female)
summary(male)
nrow(female) #get number of female
nrow(male) #get number of male
#-------(part 13)---------
survived.age=age[!L] #negating L since it means dead.
table1<-subset(ti, survived==1, select=c(pclass,age))
table2 = na.omit(table1) #get rid of na values
boxplot(table2$age~table2$pclass) #create boxplot.
