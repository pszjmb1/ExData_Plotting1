# Script to examine how household energy usage varies over a 2-day period in February, 2007 
# Plot 1
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
  dataset <- loadData()
  hist( dataset$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
        main ="Global Active Power")
}