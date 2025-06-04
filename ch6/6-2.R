install.packages("maps")
library(maps)

us_map <- map_data("state")
head(us_map, 3)

head(USArrests, 3)

state <- tolower(rownames(USArrests))
crime_map <- data.frame(region = state, USArrests)
rownames(crime_map) <- NULL
head(crime_map)

install.packages("ggiraphExtra")
library(ggiraphExtra)
ggChoropleth(data = crime_map, aes(fill = Murder, map_id = region),
map = us_map,
interactive = T)