DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
DF

is.vector(DF$height)
str(DF)
DF$height
mean(DF$height)
Height <- DF$height
Height
DF[[7]]
DF[7]
class(DF[[7]])
class(DF[7])
