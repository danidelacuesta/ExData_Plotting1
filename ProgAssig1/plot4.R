plot4 <- function() {
        library(lubridate)
        data <- fread(".//household_power_consumption.txt",skip=65000,nrows=5000)
        data <- data[data$V1=="1/2/2007"|data$V1=="2/2/2007"]
        data$Date_Combined <- dmy(data$V1)+hms(data$V2)
        par(mfrow=c(2,2))
        {
                #graph1
                plot(data$Date_Combined,data$V3,type="l",ylab="Global Active Power (kilowatts)",xlab="")
                
                #graph2
                plot(data$Date_Combined,data$V5,type="l",ylab="Voltage",xlab="datetime")
                
                #graph3
                plot(data$Date_Combined,data$V7,type="l",xlab="",ylab="Energy sub metering")
                legend("topright", bty="n", lty = c(1,1,1),cex =0.6, y.intersp=0.3, yjust=0.5, col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
                lines(data$Date_Combined,data$V8,col="red")
                lines(data$Date_Combined,data$V9,col="blue")
                
                #graph4
                plot(data$Date_Combined,data$V4,type="l",ylab="Global_reactive_power",xlab="datetime")
                
        }
        dev.copy(png,file="plot4.png")
        dev.off()
}