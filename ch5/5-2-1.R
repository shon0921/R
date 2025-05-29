DF <- read.csv("example_salary.csv",fileEncoding = "CP949",na="-")
head(DF,5)

colnames(DF)

colnames(DF) <- c("age", "salary", "specialSalary", "workingTime", "numberOfWorker","career","sex")
str(DF)

attach(DF)

Mean <- mean(salary,na.rm=T)
Mean

Mid <- median(salary,na.rm=T)
Mid

Range <- range(salary,na.rm=T)
Range

w <- which(DF$salary==4064286)
DF[w,]

Qnt <- quantile(salary,na.rm=T)
Qnt

Salary <- list(평균월급=Mean,중앙값월급=Mid,월급범위=Range,월급사분위=Qnt)
Salary
