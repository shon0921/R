DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
DF

Freq <- table(DF$bloodtype)
Freq

ReleativeFreq <- prop.table(Freq)
ReleativeFreq

Table <- rbind(Freq, ReleativeFreq)
Table

Table <- addmargins(Table,margin=2)
Table
