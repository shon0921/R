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
