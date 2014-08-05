plot2 <- function() {
  ## Exploratory Data Analysis, Project 1, plot2
  png(file="plot2.png")
  powerdata <- read.table(pipe('grep "^[12]/2/2007" "household_power_consumption.txt"'), header = FALSE, sep = ";", na.strings = "?", colClasses = c("factor","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
  names(powerdata) <- names(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", nrow = 1))
  powerdata$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y %H:%M:%S")
  plot(powerdata$DateTime,powerdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
}  

  
