# create plot 3

# plot sub metering 1
plot(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")

# add lines for sub metering 2 & 3, using different color
lines(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Sub_metering_2,col="red",type="l")
lines(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Sub_metering_3,col="blue",type="l")

# add legend
legend("topright",lty=1,col=c("Black","red","blue"),legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering3"))

# save as png file
dev.copy(png,"plot3.png",width = 480, height = 480)
dev.off()