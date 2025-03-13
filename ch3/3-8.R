DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
BMI <- DF$weight/DF$height^2
BMI
DF <- cbind(DF, BMI)
DF
