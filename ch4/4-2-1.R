DF <- mtcars
str(DF)
attach(DF)

plot(DF[,c(1:5)])
plot(DF[,c(6:11)])

plot(mpg~disp)
cor(mpg, disp)

boxplot(mpg)
hist(mpg)
hist(mpg, breaks=10)

boxplot(disp)
hist(disp)