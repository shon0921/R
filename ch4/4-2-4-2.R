library("dplyr")
library("ggplot2")
library("ggthemes")

DF <- read.csv("example_population_f.csv", fileEncoding = 'CP949')
DF <- DF[,-1]

DF <- mutate(DF, SexF = ifelse(SexRatio < 1,"여자비율높음",
ifelse(SexRatio > 1, "남자비율높음", "남여비율같음")))

DF$SexF <- factor(DF$SexF)
DF$SexF <- ordered(DF$SexF, c("여자비율높음","남여비율같음","남자비율높음"))
DF2 <- filter(DF, Provinces=="경기도")

Graph <- ggplot(DF2, aes(x=City, y=(SexRatio-1), fill=SexF)) +
geom_bar(stat="identity",position="identity") + theme_wsj()
Graph

DF4 <- filter(DF, Provinces=="서울특별시")

Graph2 <- ggplot(DF4, aes(x=City, y=(SexRatio-1), fill=SexF)) +
geom_bar(stat='identity', position='identity') + theme_wsj()
Graph2