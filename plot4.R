source("prepareData.R")

# open device to write the plot to
png(filename = "plot4.png", width=480, height=480)

# we create 4 plots in a grid 2x2
par(mfrow = c(2, 2))

with(neededdataWithDateTime, {
    plot(DateTime, Global_active_power, type="l", ylab="Global Active Power",  xlab="")
    plot(DateTime, Voltage, type="l", ylab="Voltage",  xlab="datetime")
    
    plot(DateTime, as.numeric(Sub_metering_1), type="l", ylab="Energy sub metering", xlab="")
    points(DateTime, as.numeric(Sub_metering_2), type="l", col = "red")
    points(DateTime, as.numeric(Sub_metering_3), type="l", col = "blue")
    legend("topright", lty=1, bty="n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.9)

    plot(DateTime, Global_reactive_power, type="l", ylab="Global_reactive_power",  xlab="datetime")
})

# close the device
dev.off() 
