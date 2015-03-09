plot1 <- function() {
        library(lubridate)
        data <- fread(".//household_power_consumption.txt",skip=65000,nrows=5000)
        data <- data[data$V1=="1/2/2007"|data$V1=="2/2/2007"]
        #data$V1<-lapply(data$V1,dmy)
        #data$V2<-lapply(data$V2,hms)
        hist(data$V3,col="red",main="Global active power",xlab="Global active power (kilowatts)")
        dev.copy(png,file="plot1.png")
        dev.off()
}