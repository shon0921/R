DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")

CT <- table(DF$sex,DF$bloodtype)
CT

PropCT <- prop.table(CT,margin=1)
PropCT

addmargins(PropCT,margin=2)

a <- c(1,2,3,4,NA,6,7,8,9,10)
a

complete.cases(a)

a <- a[complete.cases(a)]
a

a <- c(1,2,3,4,NA,6,7,8,9,10)
a
a <- na.omit(a)
a
