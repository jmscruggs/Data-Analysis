# Name: James Scruggs
# M#: M01255052
# Date: 1/30/18
# HW#: 1
load("C:\\Users\\student\\Desktop\\HW-1-tab.txt")
file = read.table("C:\\Users\\student\\Desktop\\HW-1-tab.txt",header=T,sep="\t")
str(file)
summary(file)
fix(file)