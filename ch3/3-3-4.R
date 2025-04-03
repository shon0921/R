DF <- read.csv("example_coffee.csv",fileEncoding = "CP949")

Size <- DF$sizeOfsite
summary(Size)
plot(Size)

Size[Size > 10000] <- NA
summary(Size)

Size[Size==0] <- NA
Size <- Size[complete.cases(Size)]
summary(Size)

DegreeOfSize <- table(cut(Size,breaks=(0:72)*20))
DegreeOfSize

library("ggplot2")
library("ggthemes")
ggplot(data=DF,aes(x=sizeOfsite)) +
geom_freqpoly(binwidth=10,size=1.2,colour="orange") +
scale_x_continuous(limits=c(0,300),breaks=seq(0,300,20)) +
theme_wsj()