library("ggplot2")
str(diamonds)

library("ggthemes")
ggplot(diamonds, aes(x=x, y=price)) + geom_point()

ggplot(diamonds, aes(x=x, y=price, colour=clarity)) + geom_point()

ggplot(diamonds, aes(x=x, y=price, colour=clarity)) +
geom_point() + theme_solarized_2()

ggplot(diamonds, aes(x=x, y=price, colour=clarity)) +
geom_point(alpha=0.03) + theme_solarized_2()

ggplot(diamonds, aes(x=x, y=price, colour=clarity)) +
geom_point(alpha=0.03) +
guides(colour = guide_legend(override.aes = list(alpha =1))) +
theme_solarized_2()

ggplot(diamonds, aes(x=x, y=price, colour=clarity)) +
geom_point(alpha=0.03) +
geom_hline(yintercept=mean(diamonds$price), color="turquoise3", alpha=.8) +
guides(colour = guide_legend(override.aes = list(alpha=1 ))) +
xlim(3,9) + theme_solarized_2()