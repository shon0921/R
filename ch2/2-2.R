install.packages("rgl")

library("rgl")

example(plot3d)

library()

List <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
List

List <- read.table("studentlist.txt", fileEncoding = "CP949")
List

List <- read.table("studentlist.txt",fileEncoding = "CP949", header=TRUE)
List

List <- read.table("studentlist.txt",fileEncoding = "CP949", header=TRUE,sep=";")
List

install.packages("readxl")
library("readxl")

DF <- read_excel(path="studentlist.xlsx",sheet="Sheet1",col_names=TRUE)
DF

install.packages("ggplot2")
install.packages("ggthemes")
install.packages("data.table")
install.packages("devtools")
install.packages("dplyr")
install.packages("plyr")
install.packages("reshape2")
install.packages("scales")
install.packages("stringr")