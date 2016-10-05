#read the data
data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)
subdata<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]

#select data and construct histogram
png("plot1.png", width=480, height=480)
hist(as.numeric(subdata$Global_active_power), col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
