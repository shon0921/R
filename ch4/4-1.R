DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
attach(DF)
str(DF)

plot(age)
plot(height, weight)

plot(weight~height)

sex <- as.factor(sex)
plot (height, sex)

plot(sex, height)

DF2 <- data.frame(height,weight)
DF2
plot (DF2)

DF3 <- cbind(DF2, age)
DF3
plot(DF3)

plot(DF)
plot(weight~height, pch=as.integer(sex))

legend("topleft", c("남","여"), pch=sex)

coplot(weight~height | sex)

plot(weight~height,ann=F)
title(main="A대학 B학과생 몸무게와 키의 상관관계")
title(xlab="키")
title(ylab="몸무게")

grid()
heightMean <- mean(height)
abline(v=heightMean, col="red")

FreqBlood <- table(bloodtype)
FreqBlood
barplot(FreqBlood)
title(main="혈액형별 빈도수")
title(xlab="혈액형")
title(ylab="빈도수")

Height <- tapply(height, bloodtype, mean)
Height
barplot(Height, ylim=c(0,200))

boxplot(height)

boxplot(height~bloodtype)

hist(height)
hist(height , breaks=10)

hist(height, breaks=10, prob=T)
lines(density(height))

BreakPoint <- seq(min(height), max(height)+7, by=7)
hist(height, breaks=BreakPoint)

DiffPoint <- c(min(height), 165, 170, 180, 185, 190)
hist(height, breaks=DiffPoint)

par(mfrow=c(2,3))

plot(weight,height)
plot(sex,height)
barplot(table(bloodtype))
boxplot(height)
boxplot(height~bloodtype)
hist(height,breaks=10)

par(mfrow=c(1,1))

TS1 <- c(round(runif(30)*100))
TS1
TS2 <- c(round(runif(30)*100))
TS2

TS1 <- sort(TS1, decreasing=F)
TS2 <- sort(TS2, decreasing=F)
TS1
TS2

plot(TS1, type="1")
lines(TS2, lty="dashed",col="red")
