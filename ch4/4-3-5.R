library(readxl)
j_2019 <- read_excel("jeju-visitors-2019.xls")
j_2020 <- read_excel("jeju-visitors-2020.xls")

library(dplyr)

jeju_raw <- bind_rows(j_2019, j_2020)
table(jeju_raw$"년도")

jeju <- rename(jeju_raw,
			year = 년도,
			month = 월,
			city = 군구,
			loc = 관광지,
			kor = 내국인,
			forn = 외국인)
jeju$year <- as.factor(jeju$year)
jeju$month <- as.factor(jeju$month)
str(jeju)

vit_tot <- jeju %>%
	filter(!is.na(kor)) %>%
	group_by(year, month) %>%
	summarise(mon_tot = sum(kor))
head(vit_tot)
dim(vit_tot)

library(ggplot2)
ggplot(data = vit_tot, aes(x = month, y = mon_tot, group = year,
color = year)) + geom_line() + geom_point()

vit_19 <- jeju %>%
	filter(!is.na(kor) & year == 2019) %>%
	group_by(month) %>%
	summarise(mon_19 = sum(kor))
str(vit_19)

vit_20 <- jeju %>%
	filter(!is.na(kor) & year == 2020) %>%
	group_by(month) %>%
	summarise(mon_20 = sum(kor))
str(vit_20)

vit <- left_join(vit_19, vit_20, by = "month")
str(vit)

vit_dif <- vit %>%
	mutate(dif = mon_19 - mon_20, perc = dif / mon_19 * 100)
vit_dif

ggplot(data = vit_dif, aes(x = month, y = perc)) + geom_col() +
geom_hline(yintercept = c(30, 50, 70), color = "red")