# Script to examine how household energy usage varies over a 2-day period in February, 2007 
# Plot 2
# for https://class.coursera.org/exdata-013/ project 1

loadData <- function(file="./household_power_consumption2.txt"){
  # Loads and returns the dataset
  #
  # args:
  #  file: Is the csv file to load (presumes ; separated)
  dataset <- read.csv(file,sep = ";")
  dataset
}

generatePlot <- function(){
  # Generates a histogram of Global_active_power
  #
  # args:
  #  file: Is the csv file to load (presumes ; separated)
  
  #load the data
  dataset <- loadData()
  
  # Convert date fields to proper date
  x <- paste(dataset[,1], dataset[,2], sep=" ")
  dates <- strptime(x, "%d/%m/%Y %H:%M:%S")
  
  # Create the plot
  plot( dates, dataset$Global_active_power, xlab="", ylab = "Global Active Power (kilowatts)", type="l")
  
  # Generate the file
  dev.copy(png,'plot2.png')
  dev.off()
}