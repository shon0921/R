library("ggplot2")
library("ggthemes")
ggplot(data=diamonds,aes(x=carat,y=price,colour=clarity)) + geom_point() + theme_wsj()

a <- plot(height)
a

g1 <- ggplot(data=diamonds,aes(x=carat,y=price,colour=clarity))
g2 <- geom_point()
g3 <- theme_wsj()
g1+g2+g3
g1 + g2 + theme_bw()

DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
g1 <- ggplot(DF, aes(x=height,y=weight,coloue=bloodtype))

g1 + geom_point()
g1 + geom_line()
g1 + geom_line() + geom_point()

g1 + geom_line(size=1) + geom_point (size=20)
g1 + geom_point(size=10) + geom_line(size=1) + facet_grid(.~sex)

g1 + geom_point(size=10) + geom_line(size=1) + facet_grid(sex~.)

g1 + geom_point(size=10) + geom_line(size=1) + facet_grid(sex~., scales="free")

g1 + geom_point(size=10) + geom_line(size=1) + facet_wrap(~sex, scales="free")

g <- ggplot(mpg, aes(displ, hwy))
g + geom_point()

g + geom_point() + facet_grid(.~class)
g + geom_point(alpha=.3) + facet_grid(cyl~class,scales="free")
g + geom_point(alpha=.3) + facet_wrap(cyl~class,scales="free")
g + geom_point(alpha=.3) + facet_wrap(cyl~class,scales="free", ncol=3)

ggplot(DF,aes(x=bloodtype)) + geom_bar()
ggplot(DF,aes(x=bloodtype, fill=sex)) + geom_bar()
ggplot(DF,aes(x=bloodtype, fill=sex)) + geom_bar(position="dodge")
ggplot(DF,aes(x=bloodtype, fill=sex)) + geom_bar(position="identity")
ggplot(DF,aes(x=bloodtype, fill=sex)) + geom_bar(position="dodge",width=0.3)

g1 <- ggplot(diamonds,aes(x=carat))
g1 + geom_histogram(binwidth=0.1, fill="orange")

g1 <- ggplot(DF, aes(x=weight, y=height))
g1 + geom_point()

g1 + geom_point(aes(color=sex,size=7)
g1 + geom_point(aes(color=sex, shape=sex),size=7)
g1 + geom_point(aes(color=height, shape=sex),size=7)
g1 + geom_point(aes(size=height, shape=sex),colour="orange")
g1 + geom_point(aes(color=height, shape=bloodtype),size=7, alpha=0.6)
g1 + geom_point(aes(color=sex), size=7) + geom_smooth(method="lm")
g1 + geom_point(aes(color=sex), size=7) + geom_text(aes(label=name))

library("ggthemes")
g1 + geom_histogram(aes(y=..ndensity..), binwidth=1, fill="orange") + theme_wsj()
