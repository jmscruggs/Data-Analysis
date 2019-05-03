#James Scruggs
# M01255052
# 4/17/18
# Group Work 3

#-----------(part 1)----------
Graphs<-read.csv("C:/Users/Michael Scruggs/Desktop/graphs.csv",header = TRUE)
attach(Graphs)
plot(Price~Carat)

#-----------(part 3)----------

Grades<-read.csv("C:/Users/Michael Scruggs/Desktop/grades.csv",header = TRUE)
attach(Grades)
plot(Final.Exam~HW.Ave)

#-----------(part 4)----------
norm1 <- rnorm(50,0,1)
norm2 <- rnorm(50,0,1)
plot(norm2 ~ norm1)


#-----------(part 5)----------
cor(Final.Exam,HW.Ave)

#-----------(part 6)----------
cor(norm2,norm1)

#-----------(part 7)----------
lm.grades<-lm(Final.Exam~HW.Ave)
summary(lm.grades)


#-----------(part 8)----------
plot(Final.Exam~HW.Ave)
abline(lm.grades)

#-----------(part 9)----------
qqnorm(resid(lm.grades))
qqline(resid(lm.grades))

#-----------(part 11)----------
predict(lm.grades,data.frame(HW.Ave=85),level=0.95,interval="prediction")

