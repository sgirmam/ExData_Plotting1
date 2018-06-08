
# set working directory
setwd("C:/Users/SAMSON/Documents/Coursera/Explanatory_Data_Analysis/Week1")

# read data
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))

# date formating
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

## Saving the plot to file
png("plot3.png", height=480, width=480)
plot(data1$Datetime, data1$Sub_metering_1, type ="l", ylab = "Energy Sub_metering",  xlab =" ")
lines(data1$Datetime, data1$Sub_metering_2, type ="l", col = "red")
lines(data1$Datetime, data1$Sub_metering_3, type ="l", col = "blue")
#legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()



