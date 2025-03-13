DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
colnames(DF)
colnames(DF)[6] <- "blood"
DF
