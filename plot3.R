plot3 <- function() {
  
  # Load data
  source("loadData.R")
  myDataFrame <- loadData()
  
  # Create graph
  png("plot3.png", width=480, height=480)
  plot(myDataFrame$Time, 
       myDataFrame$Sub_metering_1, 
       type="l", 
       col="black",
       xlab="", 
       ylab="Energy sub metering")
  lines(myDataFrame$Time, myDataFrame$Sub_metering_2, col="red")
  lines(myDataFrame$Time, myDataFrame$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  # Close device
  dev.off()
}