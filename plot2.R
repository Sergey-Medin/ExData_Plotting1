# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Coursera.org: Exploratory Data Analysis
# Course Project 1
#
# This script creare plot2.png
#
# Date: 08.05.2015
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# reading the data
source("tidy_data.R")
tidy_data <- take_tidy_data("household_power_consumption.txt")


# call to the device driver
png(file="plot2.png",width = 480,height = 480)

# get the range for the x and y axis 
xrange <- range(tidy_data$DateTime) 
yrange <- range(tidy_data$Global_active_power) 

# set up the plot 
plot(xrange, yrange, type="n", xlab="", ylab="Global Active Power (kilowatts)") 
lines(tidy_data$DateTime, tidy_data$Global_active_power, lty=1)
dev.off()
