#read the data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
subdata<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]

#transforming date and time variables into right format, store in new variable
date_time<-strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#construct plot
png("plot3.png", width=480, height=480)
plot(date_time, as.numeric(subdata$Sub_metering_1), type = "l", col="black", xlab="", ylab="Energy sub metering")
lines(date_time, as.numeric(subdata$Sub_metering_2), type = "l", col="red")
lines(date_time, as.numeric(subdata$Sub_metering_3), type = "l", col="blue")
#add legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=1)

dev.off()