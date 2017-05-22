loadData<- function() {

  fileName <-"./data/household_power_consumption.txt"
  zipFile   <-"./data/zipFile.zip"
  fileURL   <-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  
  # Download raw data if needed.
  
  if(!file.exists(zipFile)){
    tryCatch(download.file(fileURL, 
                          zipFile,
                          method="auto"),
             error=function(e) 1)
  }
  
  unzip(zipFile,exdir="./data/");

  # Load data frame from txt file.
  dataFrame <- read.table(fileName,
                   header=TRUE,
                   sep=";",
                   colClasses=c("character", 
                                "character", 
                                rep("numeric",7)),
                   na="?")
  
  # Filter rows from 2007-02-01 to  2007-02-02
  dataFrame$Time <- strptime(paste(dataFrame$Date, dataFrame$Time), "%d/%m/%Y %H:%M:%S")
  dataFrame$Date <- as.Date(dataFrame$Date, "%d/%m/%Y")

  datesRange <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  dataFrame <- subset(dataFrame, Date %in% datesRange)
  
  return(dataFrame)
  
}
  
  