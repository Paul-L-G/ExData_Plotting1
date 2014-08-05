plot1 <- function() {
  ## Exploratory Data Analysis, Project 1, plot1
  png(file="plot1.png")
  powerdata <- read.table(pipe('grep "^[12]/2/2007" "household_power_consumption.txt"'), header = FALSE, sep = ";", na.strings = "?", colClasses = c("factor","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
  names(powerdata) <- names(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", nrow = 1))
  powerdata$DateTime <- strptime(paste(powerdata$Date,powerdata$Time), "%d/%m/%Y %H:%M:%S")
  hist(powerdata$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
  dev.off()
}  

  
