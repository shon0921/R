tit <- as.data.frame(Titanic)

str(tit)

head(tit)

library(dplyr)

tit_class <- tit %>%
	group_by(Class, Survived) %>%
	summarise(sur_tot = sum(Freq)) %>%
	mutate(total = sum(sur_tot), perc = sur_tot/total * 100)

tit_class

tit_sur <- tit_class %>%
	filter(Survived == "Yes")
tit_sur

label = tit_sur$Class
colors = c("blue", "green", "yellow", "red")
pie(tit_sur$perc,
	labels =label,
	main = "Survivor Rate",
	col = colors,
	init.angle = 90)

library(ggplot2)

ggplot(tit_sur, aes(x = Class, y = perc, fill = Class)) + geom_col()

tit_sex <- tit %>%
	group_by(Class, Sex, Survived) %>%
	summarise(tot_sur = sum(Freq)) %>%
	mutate(tot = sum(tot_sur), perc = tot_sur/tot * 100) %>%
	filter(Survived == "Yes")

tit_sex

ggplot(data = tit_sex, aes(x = Class, y = perc, fill = Sex)) +
geom_col(position = "dodge") + ggtitle("Survivor Rate")

ggplot(data = tit_sex, aes(x = Class, y = perc, group = Sex, fill = Sex)) +
geom_line() + geom_point() + ggtitle("Survivor Rate")