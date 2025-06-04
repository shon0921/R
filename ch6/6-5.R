gc <- geocode(enc2utf8("호미곶"))
gc

lonlat <- c(gc$lon, gc$lat)
lonlat

map <- get_googlemap(center=lonlat)

ggmap(map)

gc <- geocode(enc2utf8("호미곶"))
lonlat <- c(gc$lon, gc$lat)
map <- get_googlemap(center=lonlat, marker=gc)

ggmap(map)


