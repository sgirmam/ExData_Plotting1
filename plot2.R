
# set working directory
setwd("C:/Users/SAMSON/Documents/Coursera/Explanatory_Data_Analysis/Week1")

# read data
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))

# date formating
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

# use .png devide to save the plot
png("plot2.png", width=480, height=480)
plot(data1$Datetime, data1$Global_active_power, type ="l", ylab = "Global Active Power (kilowatts)",  xlab =" ")
dev.off()
