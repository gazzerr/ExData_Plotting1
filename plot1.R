source("prepareData.R")

# open device to write the plot to
png(filename = "plot1.png", width=480, height=480)

hist(as.numeric(neededdataWithDateTime$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", 
     col="red")

# close the device
dev.off() 
