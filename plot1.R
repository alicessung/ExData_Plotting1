# create histgrame for plot 1
hist(data$Global_active_power,col="red",xlab="Global Active Power(kilowatts)", main="Global Active Power")

# saved as png file
dev.copy(png,"plot1.png")
dev.off()