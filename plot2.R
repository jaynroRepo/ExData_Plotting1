plot2 <- function() {
  
  # Load data
  source("loadData.R")
  myDataFrame <- loadData()

  # Create graph
  png("plot2.png", width=480, height=480)
  plot(myDataFrame$Time, 
       myDataFrame$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  # Close device
  dev.off()
}