DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")

FactorOfHeight <- cut(DF$height,breaks=4)
FactorOfHeight

FreqOfHeight <- table(FactorOfHeight)
FreqOfHeight

FreqOfHeight <- rbind(FreqOfHeight,prop.table(FreqOfHeight))
FreqOfHeight

rownames(FreqOfHeight)[2] <- "RelativeFreq"
FreqOfHeight

CumuFreq <- cumsum(FreqOfHeight[2,])
CumuFreq

FreqOfHeight <- rbind(FreqOfHeight,CumuFreq)
FreqOfHeight

rownames(FreqOfHeight) <- c("도수","상대도수","누적도수")
FreqOfHeight

FreqOfHeight <- addmargins(FreqOfHeight,margin=2)
FreqOfHeight
