source("prepareData.R")

# open device to write the plot to
png(filename = "plot3.png", width=480, height=480)

with(neededdataWithDateTime, {
    
    plot(DateTime, as.numeric(Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
    points(DateTime, as.numeric(Sub_metering_2), type="l", col = "red")
    points(DateTime, as.numeric(Sub_metering_3), type="l", col = "blue")
    legend("topright", lty=1, bty="o", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

})

# close the device
dev.off() 
