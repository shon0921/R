DF <- read.csv("example_studentlist.csv", fileEncoding = "CP949")
AddCol <- data.frame(name="이미리",sex="여자",age="24",grade="4",absence="무",bloodtype="A",height=175.2,weight=51)
AddCol

DF <- rbind(DF,AddCol)
DF