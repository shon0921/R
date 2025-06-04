install.packages("devtools")
devtools::install_github("cardiomoon/kormaps2014")

library(kormaps2014)
str(kormap1)

str(korpop1)

library(ggplot2)
ggplot(data = korpop1, aes(map_id = code, fill = 총인구_명)) +
geom_map(map = kormap1, color = "black", size = 0.2) +
expand_limits(x = kormap1$long, y = kormap1$lat) +
scale_fill_gradientn(colours = c("yellow", "red", "purple"),
labels = scales::comma)