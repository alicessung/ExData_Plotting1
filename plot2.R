# create plot 2
plot(strptime(data$DateTime, "%d/%m/%Y %H:%M:%S"),data$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")

# save as png file
dev.copy(png,"plot2.png",width = 480, height = 480)
dev.off()