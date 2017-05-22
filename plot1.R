plot1 <- function() {
  
  # Load data
  source("loadData.R")
  myDataFrame <- loadData()
  
  # Create graph
  png("plot1.png", width=480, height=480)
  hist(myDataFrame$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  # Close device
  dev.off()
}