if(!file.exists("project 1")){dir.create("project 1")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="~/Desktop/Exploratory data/project 1/household_power_consumption.zip")
unzip("~/Desktop/Exploratory data/project 1/household_power_consumption.zip",exdir="~/Desktop/Exploratory data/project 1")
files<-file("~/Desktop/Exploratory data/project 1/household_power_consumption.txt")
data<-read.table(text = grep("^[1,2]/2/2007",readLines(files),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = "?")

#Plot 1
png("plot1.png")
with(data, hist(Global_active_power, xlab = "Global Active Power (kilowatt)", main = "Global Active Power", col = "red"))
dev.off()
