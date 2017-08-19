#Plot 4
png("plot4.png")
par(mfrow = c(2,2))
with(data, {
	plot(Global_active_power~DateTime, type = "l", ylab = "Gloabl Active Power", xlab = "")
	plot(Voltage~DateTime, type = "l", ylab = "Voltage", xlab = "datetime")
})
with(data, {
	plot(Sub_metering_1~DateTime, type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
	lines(Sub_metering_2~DateTime, col = "red")
	lines(Sub_metering_3~DateTime, col = "blue")
})
with(data, plot(Global_reactive_power~DateTime, type = "l", ylab = "Global_reactvie_power", xlab = "datetime"))
dev.off()