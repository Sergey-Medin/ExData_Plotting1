# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Coursera.org: Exploratory Data Analysis
# Course Project 1
#
# This script retrieves only the necessary data and prepares them for further
# processing.
#
# Date: 08.05.2015
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

take_tidy_data <- function(filepath){
  # THIS FUNCTIONS WORK ONLY WITH household_power_consumption.txt!!!
  # https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
  
  header <- read.table(filepath, sep = ";", nrow = 1)
  
  # We will take data for [01.02.2007; 02.02.2007]
  # 66638 - FIRST row in household_power_consumption.txt with necessary data
  # 69517 -  LAST row in household_power_consumption.txt with necessary data
  first_position <- 66638
  last_position <- 69517
  data <- read.table(filepath, sep = ";",
                     nrow = last_position - first_position + 1,
                     skip = first_position - 1)
  
  names(data) <- as.character(lapply(header, as.character))
  
  # Convert Data and Time
  library(lubridate)
  DateTime <- dmy_hms(paste(lapply(data$Date, as.character),
                            lapply(data$Time, as.character)))
  
  tidy_data <- cbind(DateTime, data[, 3:9])
}