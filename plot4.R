plot4 <- function() {
  ## Exploratory Data Analysis, Project 1, plot4
  png(file="plot4.png")
  powerdata <- read.table(pipe('grep "^[12]/2/2007" "household_power_consumption.txt"'), header = FALSE, sep = ";", na.strings = "?", colClasses = c("factor","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
  names(powerdata) <- names(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", nrow = 1))
  powerdata$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y %H:%M:%S")
  par(mfrow = c(2, 2), mar = c(4,4,4,4)) 
  plot(powerdata$DateTime,powerdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  plot(powerdata$DateTime, powerdata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
  plot(powerdata$DateTime,powerdata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(powerdata$DateTime,powerdata$Sub_metering_2, col = "red")
  lines(powerdata$DateTime,powerdata$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", pch = 151, col = c("black", "red", "blue"))  
  plot(powerdata$DateTime, powerdata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
  dev.off()
}

  
