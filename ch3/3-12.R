DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")

HeightBySex <- split(DF$height,DF$sex)
HeightBySex

mean(HeightBySex[[1]])
mean(HeightBySex[[2]])

sapply(HeightBySex,mean)
sapply(HeightBySex,sd)
sapply(HeightBySex,range)
