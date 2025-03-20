DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
a <- c(1:20)
s <- c("파스타", "짬뽕", "순두부찌게", "요거트 아이스크림", "커피")
L <- c(T,F,F,T,T,T)

List <- list(DF, a,s,L	)
List

List <- list(DataFrame=DF,Number=a,Character=s,Logic=L)
List

List[1] <- NULL
List["Number"]

List[1]
class(List[1])

List[[1]]
class(List[[1]])

List[c(2,3) ]
List[c("Number","Character")]

List$Number
class(List$Number)
List$Character
class(List$Character)

names(List)[2] <- "Num"
List[2]

names(List) <- c("Num","Cha","Log")
List
