jeju_2019 <- read.csv("jeju_2019.csv")
head(jeju_2019)
table(is.na(jeju_2019$kor))

kor_mon <- jeju_2019 %>%
	filter(!is.na(kor)) %>%
	group_by(month) %>%
	summarise(mon_tot = sum(kor))
head(kor_mon)
dim(kor_mon)

library(ggplot2)
ggplot(data = kor_mon, aes(x = month, y=mon_tot)) +
geom_line() + geom_point() +
scale_x_continuous(breaks=seq(1, 12, 1))

mu_mon <- jeju_2019 %>%
	select(month, loc, kor) %>%
	filter(!is.na(kor) & loc == "국립제주박물관")
head(mu_mon)

ggplot(data = mu_mon, aes(x = month, y=kor)) +
geom_line() + geom_point() +
scale_x_continuous(breaks=seq(1, 12, 1))