library(ggplot2)
library(ggiraphExtra)
library(kormaps2014)

ggChoropleth(data = korpop1,
aes(fill = 총인구_명, map_id = code),
map = kormap1)

ggChoropleth(data = korpop3,
aes(fill = 총인구_명,
map_id = code,
tooltip = name),
map = kormap3,
interactive = T)

str(tbc)

ggChoropleth(data = tbc,
aes(fill = NewPts, map_id = code),
map = kormap1)