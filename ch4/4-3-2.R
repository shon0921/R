library(ggplot2)
library(dplyr)
cut_price <- diamonds %>%
	group_by(cut) %>%
	summarise(p_mean = mean(price))
cut_price

ggplot(data = cut_price, aes(x = cut, y=p_mean)) + geom_col ()

dia <- diamonds %>%
	mutate(mass = ifelse(carat <=1, "W1",
		ifelse(carat <= 2, "W2",
			ifelse(carat <= 3, "W3", "W4"))))
head(dia, 3)

dia_price <- dia %>%
	select(cut, price, mass) %>%
	group_by(mass, cut) %>%
	mutate(mean = mean(price))
head(dia_price, 3)

ggplot(data = dia_price, aes(x = mass, y = mean, group = cut, color = cut)) +
geom_line(size = 1) + geom_point()

dia_3 <- diamonds %>%
	filter(carat > 3)
dia_3

ggplot(data = dia_3, aes(x = color, fill = clarity)) + geom_bar()