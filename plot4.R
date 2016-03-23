# create plot 4

# initiate frame 2*2
par(mfrow=c(2,2))

# plot 1st 
plot(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")

# plot 2nd
plot(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Voltage,type="l",xlab="datetime",ylab="Voltage")

# plot 3rd
plot(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Sub_metering_2,col="red",type="l")
lines(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Sub_metering_3,col="blue",type="l")
legend("topright",lty=1,col=c("Black","red","blue"),legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering3"))

# plot 4th
plot(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

# save as png
dev.copy(png,"plot4.png",width = 480, height = 480)
dev.off()
