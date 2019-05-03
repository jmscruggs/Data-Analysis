# James Scruggs
# M01255052
# 2/27/18
# HW4

#---------(part 1)-----------
var1<-1:10
var2<-c(1:9,50)
var3<-c(1:9,100)

summary(var1)
summary(var2)
summary(var3)

#---------(part 3)------------
sd(var1); range(var1)
sd(var2); range(var2)
sd(var3); range(var3)

#---------(part 4)------------
var4<-seq(from=10,to=100,by=10)
var5<-c(10,52:58,100)

stripchart(var4,method="stack", pch=19)
par(new=T) # put the two graphs on the same axis
stripchart(var5,method="stack",pch=23)

A = list("var4"=var4,"var5"=var5)
stripchart(A, main="var4 vs. var5", col=c("orange","red"), pch=10)

range1 = (max(var4)-min(var4)) #find the range
SD1 = sd(var4) # find the standard deviation.

range2 = (max(var5)-min(var5))
SD2 = sd(var5)

#-----------(part 5)------------
GestationRats2<-read.csv(file.choose(),header=TRUE)

#-----------(part 6)------------
(hist(GestationRats2$Gest))
(mean(GestationRats2$Gest))
(sd(GestationRats2$Gest))

#-----------(part 7)------------
a = ((mean(GestationRats2$Gest)) - (sd(GestationRats2$Gest)))
b = ((mean(GestationRats2$Gest)) + (sd(GestationRats2$Gest)))

#-----------(part 8)------------
MeanGest<-mean(GestationRats2$Gest)
SdGest<-sd(GestationRats2$Gest)
sum(GestationRats2$Gest<MeanGest+SdGest & GestationRats2$Gest>MeanGest-SdGest)

#-----------(part 9)------------
c = ((mean(GestationRats2$Gest)) - (2*(sd(GestationRats2$Gest))))
d = ((mean(GestationRats2$Gest)) + (2*(sd(GestationRats2$Gest))))
sum(GestationRats2$Gest<d & GestationRats2$Gest>c)

#-----------(part 10)-----------
e = ((mean(GestationRats2$Gest)) - (3*(sd(GestationRats2$Gest))))
f = ((mean(GestationRats2$Gest)) + (3*(sd(GestationRats2$Gest))))
sum(GestationRats2$Gest<f & GestationRats2$Gest>e)

#-----------(part 11)-----------
one_dev = 60/92 # 65%
two_dev = 88/92
thre_dev = 91/92

#-----------(part 12)-----------
(hist(GestationRats2$WT))

#-----------(part 13)-----------
PresidentsDay<-read.csv(file.choose(),header=TRUE)
(hist(PresidentsDay$Number.of.days.in.office))
MeanPres = mean(PresidentsDay$Number.of.days.in.office)
SdPres = sd(PresidentsDay$Number.of.days.in.office)
one_sd = sum(PresidentsDay$Number.of.days.in.office<MeanPres+SdPres & PresidentsDay$Number.of.days.in.office>MeanPres-SdPres)


a.a = ((mean(PresidentsDay$Number.of.days.in.office)) - (2*(sd(PresidentsDay$Number.of.days.in.office))))
b.b = ((mean(PresidentsDay$Number.of.days.in.office)) + (2*(sd(PresidentsDay$Number.of.days.in.office))))
two_sd = sum(PresidentsDay$Number.of.days.in.office < b.b & PresidentsDay$Number.of.days.in.office > a.a)

c.c = ((mean(PresidentsDay$Number.of.days.in.office)) - (3*(sd(PresidentsDay$Number.of.days.in.office))))
d.d = ((mean(PresidentsDay$Number.of.days.in.office)) + (3*(sd(PresidentsDay$Number.of.days.in.office))))
three_sd = sum(PresidentsDay$Number.of.days.in.office < d.d & PresidentsDay$Number.of.days.in.office > c.c)

one_sd/nrow(PresidentsDay)
two_sd/nrow(PresidentsDay)
three_sd/nrow(PresidentsDay)
