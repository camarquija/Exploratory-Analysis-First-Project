library(dplyr)
## First part: Preparing the dataset
if (!file.exists("household_power_consumption.txt")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                "household_power_consumption.zip")
  unzip("household_power_consumption.zip", overwrite = T)
}
## Reading the data from the txt file and giving the correct class to each variable
## and subsetting for the two days to be analyzed
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, 
                   na.strings = "?",
                   colClasses = c('character','character','numeric','numeric','numeric',
                                  'numeric','numeric','numeric','numeric'))
data <- subset(data, as.Date(Date, "%d/%m/%Y") == "2007-02-01" |
                 as.Date(Date, "%d/%m/%Y") == "2007-02-02")

## Joining the Date and Time columns in just one. It is not made since the beginning
## beacuse of the data size
DateTime <- paste(data$Date, data$Time, sep = " ")
DateTime <- strptime(DateTime, "%d/%m/%Y %T")
data_names <- c("Date_Time", names(data)[3:9])
data <- cbind(DateTime, data[,3:9])

## Third plot
png("plot3.png", width=480, height=480)
plot(data$DateTime, data$Sub_metering_1,
     type = "l", col = "black", xlab = "",
     ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","red","blue"), lwd = c(1,1,1))
dev.off()
