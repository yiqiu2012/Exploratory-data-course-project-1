#Plot 3
png("plot3.png")
with(data,{
	plot(Sub_metering_1~DateTime, type = "l", ylab = "Energy sub metering", xlab = "")
	lines(Sub_metering_2~DateTime, col = "red")
	lines(Sub_metering_3~DateTime, col = "blue")
})
legend("topright", col = c("black", "red", "blue"), lwd = c(1,1,1), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

