TS <- read.csv("example_ts.csv")
TS

library("ggplot2")
library("ggthemes")

ggplot(TS, aes(x=Date, y=Sales)) + geom_line()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) + geom_line()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) + geom_line() + geom_point()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) + geom_line() + geom_point() + theme_light()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) +
geom_line(colour="orange1", size=1) + geom_point(colour="orangered2", size=4) +
theme_light()
ggplot(TS, aes(x=factor(Date), y=Sales,group=1)) +
geom_line(colour="orange1",size=1) +
geom_point(colour="orangered2",size=4) +
xlab("년도") + ylab("매출") + ggtitle("A기업 월별 매출") +
theme_light()