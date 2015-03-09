plot3 <- function() {
        library(lubridate)
        data <- fread(".//household_power_consumption.txt",skip=65000,nrows=5000)
        data <- data[data$V1=="1/2/2007"|data$V1=="2/2/2007"]
        data$Date_Combined <- dmy(data$V1)+hms(data$V2)
        plot(data$Date_Combined,data$V7,type="l",xlab="",ylab="Energy sub metering")
        lines(data$Date_Combined,data$V8,col="red")
        lines(data$Date_Combined,data$V9,col="blue")
        legend("topright", lty = c(1,1,1),col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
        dev.copy(png,file="plot3.png")
        dev.off()
}