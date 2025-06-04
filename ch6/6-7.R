install.packages("openxlsx")

library(ggmap)
library(ggplot2)
library(openxlsx)
register_google(key = "AIzaSyDENA0KxY-9aRjlsAZewnEoaDX8eTqbC4I")

df <- read.xlsx(file.choose(), sheet = 1, startRow = 4)

head(df)

tail(df)

df[,6] <- gsub(" N", "", df[,6])
df[,7] <- gsub(" E", "", df[,7])
df2 <- data.frame(lon=df[,7], lat=df[,6], mag=df[,3])
str(df2)

df2[,1] <- as.numeric(as.character(df2[,1]))
df2[,2] <- as.numeric(as.character(df2[,2]))
str(df2)

cen <- c((max(df2$lon)+min(df2$lon))/2,
(max(df2$lat)+min(df2$lat))/2)
cen

map <- get_googlemap(center=cen, zoom=6)

gmap <- ggmap(map)
gmap + geom_point(data=df2,
aes(x=lon, y=lat),
color="red",
size=df2$mag,
alpha=0.5)