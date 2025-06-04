install.packages("ggmap")
library(ggmap)

register_google(key = "AIzaSyDENA0KxY-9aRjlsAZewnEoaDX8eTqbC4I")
map <- get_googlemap(center=c(126.975684, 37.572752))

ggmap(map)

map <- get_googlemap(center=c(126.975684, 37.572752),
maptype="roadmap")

ggmap(map)

map <- get_googlemap(center=c(126.975684, 37.572752),
maptype="roadmap",
zoom=17)

ggmap(map)

map <- get_googlemap(center=c(126.975684, 37.572752),
maptype="roadmap",
zoom=17,
size=c(320,320))

ggmap(map)

map <- get_googlemap(center=c(126.975684, 37.572752),
maptype="roadmap",
zoom=17,
size=c(320,320))

ggmap(map, extent="device")