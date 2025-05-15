library(readxl)
library(dplyr)
jeju_2019 <- read_excel("jeju-visitors-2019.xls")
head(jeju_2019)

jeju_2019 <- rename(jeju_2019,
				 year = 년도,
				 month = 월,
				 city = 군구,
				 loc = 관광지,
				 kor = 내국인,
				 forn = 외국인)
head(jeju_2019)

write.csv(jeju_2019, file = "jeju_2019.csv")

top_loc <- jeju_2019 %>%
	group_by(loc) %>%
	summarise(tot = sum(kor))
head(top_loc)

dim(top_loc)
table(is.na(top_loc$loc))
table(is.na(top_loc$tot))

top_10 <- top_loc %>%
	filter(!is.na(tot)) %>%
	arrange(desc(tot)) %>%
	head(10)
top_10

library(ggplot2)
ggplot(data = top_10, aes(x = reorder(loc, tot), y = tot)) +
geom_col() + coord_flip() +
scale_y_continuous(labels = scales::comma)