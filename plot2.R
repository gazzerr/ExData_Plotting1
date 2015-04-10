source("prepareData.R")

# open device to write the plot to
png(filename = "plot2.png", width=480, height=480)

with(neededdataWithDateTime, plot(DateTime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", 
                                  xlab=""))

# close the device
dev.off() 
