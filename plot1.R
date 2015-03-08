plot1 <- function() {
        library(lubridate)
        data <- fread(".//household_power_consumption.txt",skip=65000,nrows=5000)
        #data$V1<-lapply(data$V1,dmy)
        #data$V2<-lapply(data$V2,hms)
        hist(data$V3,main="Global active power",xlab="Global active power (kilowatts)",col="red")
        dev.copy(png,file="plot1.png")
        dev.off()
}