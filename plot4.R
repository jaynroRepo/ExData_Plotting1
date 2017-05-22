plot4 <- function() {
  
  # Load data
  source("loadData.R")
  myDataFrame <- loadData()
  
  # Create graph
  png("plot4.png", width=480, height=480)
  par(mfrow=c(2,2))
  
  
  # Plot 1
  plot(myDataFrame$Time, 
       myDataFrame$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power")  
  # Plot 2
  plot(myDataFrame$Time,
       myDataFrame$Voltage, 
       type="l",
       xlab="datetime",
       ylab="Voltage")
  
  # Plot 3
  plot(myDataFrame$Time,
       myDataFrame$Sub_metering_1, 
       type="l", 
       xlab="", 
       ylab="Energy sub metering")
  
  lines(myDataFrame$Time,
        myDataFrame$Sub_metering_2,
        col="red")
  lines(myDataFrame$Time,
        myDataFrame$Sub_metering_3,
        col="blue")
  legend("topright", 
         col=c("black","red","blue"), 
         c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
         lty=1,
         box.lwd=0)
  
  # Plot 4
  plot(myDataFrame$Time,
       myDataFrame$Global_reactive_power, 
       type="l", 
       xlab="datetime", 
       ylab="Global_reactive_power")
  
  lines(myDataFrame$Time, 
        myDataFrame$Global_reactive_power)
  
  # Close device
  dev.off()
}