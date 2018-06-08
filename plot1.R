
# set working directory
setwd("C:/Users/SAMSON/Documents/Coursera/Explanatory_Data_Analysis/Week1")

# read data
data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#subsetting data and date formating 
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

# use .png devide to save the plot
png("plot1.png", width=480, height=480)
hist(data1$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red" )
dev.off()