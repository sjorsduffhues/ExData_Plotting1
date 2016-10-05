#read the data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
subdata<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]

#transforming date and time variables into right format, store in new variable
date_time<-strptime(paste(subdata$Date, subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#construct plot
png("plot2.png", width=480, height=480)
plot(date_time, as.numeric(subdata$Global_active_power), xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()
