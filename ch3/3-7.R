DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
colnames(DF)
colnames(DF)[6] <- "blood"
DF

OldList <- colnames(DF)
NewList <- c("na","se","ag","gr","ab","bl","he","we")
colnames(DF) <- NewList
DF
