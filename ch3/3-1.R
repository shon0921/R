a1 <- c(5,3,6,3,1)
a1

is(a1)

a1 <- c(1L,2L,3L)
is(a1)

a1 <- as.integer(a1)
is(a1)

b <- c(1.23, 6.63452, 4.34234)
b
is(b)

a2 <- c("짬뽕","짜장면","짬뽕","짬뽕","짜장면")
a2

a3 <- c(7,3,7,5,2,"짜장면")
a3
is(a3)

a2 <- as.factor(a2)
a2

is(a2)

a2 <- factor(a2,ordered=T)
a2
