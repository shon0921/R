DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
Omit <- read.csv("omit.csv", fileEncoding = "CP949")
Omit
DF
DF <- merge (DF, Omit, by="name")
DF
