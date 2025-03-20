install.packages("hflights")
library("hflights")

head(hflights,5)
str(hflights)

CountOfDest <- table(hflights$Dest)
CountOfDest

length(CountOfDest)

range(CountOfDest)

CountOfDest[CountOfDest==1]

CountOfDest[CountOfDest==9820]

SelectedDest <- CountOfDest[CountOfDest > 6000]
SelectedDest

addmargins(SelectedDest,margin=1)

barplot(SelectedDest)
