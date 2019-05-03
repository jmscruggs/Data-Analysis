# James Scruggs
# M01255052
# 2/13/18
# HW2
#
# Bar graph part
APH <- read.csv(file = "C:/Users/Michael Scruggs/Desktop/aphasia.csv", header=T) #import file
attach(APH)
names(APH) 
plot(Type_of_Aphasia)

# PIE Chart part

table(Type_of_Aphasia) #turn list into table of values
pie(table(Type_of_Aphasia),main = "Type of Aphasia") #make pie chart with table with a caption

# Complicated file part

ti = read.csv(file.choose(), header = T)
attach(ti)
ti$survived[name=="Allen, Miss. Elisabeth Walton"] # She survived!!

# Create 2x2 table for frequencies of survival status.

table(survived,sex) # makes 2x2 table of frequencies of survival status vs. sex.
barplot(table(survived,sex)) # uses data in table to make barchart
barplot(table(survived,sex),legend=rownames(table(survived,sex))) # adds a legend (color indicator)
barplot(table(survived,sex),legend=c("Died","Survived")) # changes legend to be more descriptive
barplot(table(survived,sex),main="Frequency of survived for different genders", xlab="Gender", ylab="Frequency", col=c("red","yellow"), legend=c("Died","Survived")) #Add labels and colors

# Part 7
table1 <- table(survived,sex) #naming table to call it again later.
table1 # result of table1
table1[1,]
table1[2,]
table1[,1]
table1[,2]

lbls1 = c("M.D", "M.S") # M.D = Males dead; M.S = Males survived
lbls2 = c("F.D", "F.S") # F.D = Females dead; F.S = Females survivied

slices1 = c(table1[1,2], table1[2,2]) # slice the rows; (exclude col 1)
slices2 = c(table1[1,1], table1[2,1]) # slice the rows; (exclude col 2)

pie(slices1, label = lbls1, main = "Men Survived vs Men Dead")
pie(slices2, label = lbls2, main = "Women Survived vs Women Dead")


