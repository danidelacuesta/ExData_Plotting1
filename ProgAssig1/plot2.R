plot2 <- function() {
        library(lubridate)
        data <- fread(".//household_power_consumption.txt",skip=65000,nrows=5000)
        data <- data[data$V1=="1/2/2007"|data$V1=="2/2/2007"]
        data$Date_Combined <- dmy(data$V1)+hms(data$V2)
        plot(data$Date_Combined,data$V3,type="l",ylab="Global Active Power (kilowatts)",xlab="")
        dev.copy(png,file="plot2.png")
        dev.off()
}