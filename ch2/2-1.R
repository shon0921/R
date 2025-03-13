print("Hello World")

1*2*3*4*5*6*7*8*9*10

factorial (9)

rep(x="배고파", time=5)

plot(10,10)

plot (c(5,7), c(20,30))

plot (runif(100),runif(100))

Object1 <- 1
Object2 <- 2

Object1
Object2

1+2

Object1 <- "문자열"
Object2 <- "데이터"
paste(Object1,Object2)

Object1 <- TRUE
Object2 <- FALSE
Object1
Object2

Object1 <- 1
Object1


Object2 <- 2
Object1 <- Object2
Object1

Object1 <- sum(1,8,4,5,9)
Object1

a <- c(1,3,5,6,9)
a

a <- 1
is.vector(a)
a <- c(1,2,5)
is.vector(a)

a <- c("첫 번째","두 번째","배고파")
a

a <- c(1,2,5,"점심")
a

Object <- c(1,3,8,9)

Object <- c(Object,11)
Object
Object <- c(0,Object)
Object
Object <- append(Object,99,after=2)
Object
Object <- Object[-2]
Object

Object <- Object[-length(Object)]
Object
Object[3] <- 9
Object
Object <- c(1,2,3,1,2,3,1,2,3,5,1,2,3,5,1,2,3)
Object
Object[Object == 5] <- 100
Object

ls()
rm(a)
rm(list=ls())
ls()
