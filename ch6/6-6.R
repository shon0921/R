library(ggmap)
library(ggplot2)
register_google(key = "AIzaSyDENA0KxY-9aRjlsAZewnEoaDX8eTqbC4I")
names <- c("도담삼봉/석문", "구담/옥순봉", "사인암", "하선암", "중선암", "상선암")
addr <- c("충청북도 단양군 매포읍 삼봉로 644-33",
"충청북도 단양군 단성면 월악로 3827",
"충청북도 단양군 대강면 사인암 2길",
"충청북도 단양군 단성면 선암계곡로 1337",
"충청북도 단양군 단성면 선암계곡로 868-2",
"충청북도 단양군 단성면 선암계곡로 790")

gc <- geocode(enc2utf8(addr))
gc

df <- data.frame(name=names, lon=gc$lon, lat=gc$lat)
df

cen <- c((max(df$lon)+min(df$lon))/2,
(max(df$lat)+min(df$lat))/2)
cen

map <- get_googlemap(center=cen,
maptype="roadmap",
zoom=12,
marker=gc)

ggmap(map)

gmap <- ggmap(map)
gmap + geom_text(data=df,
aes(x=lon, y=lat),
size=5,
label=df$name)