DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")

DF[c(6,7)]
DF[c("bloodtype", "height")]

DF[,7]
DF[2,]
DF[1,2]
DF[,"height"]
