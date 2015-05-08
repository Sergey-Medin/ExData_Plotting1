# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Coursera.org: Exploratory Data Analysis
# Course Project 1
#
# This script creare plot3.png
#
# Date: 08.05.2015
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# reading the data
source("tidy_data.R")
tidy_data <- take_tidy_data("household_power_consumption.txt")


# call to the device driver
png(file="plot3.png",width = 480,height = 480)

# get the range for the x and y axis 
xrange <- range(tidy_data$DateTime) 
yrange <- range(tidy_data$Sub_metering_1) 

# set up the plot 
plot(xrange, yrange, type="n", xlab="", ylab="Energy Sub metering")
colors <- c("black", "red", "blue")

#add lines
lines(tidy_data$DateTime, tidy_data$Sub_metering_1, col= colors[1])
lines(tidy_data$DateTime, tidy_data$Sub_metering_2, col= colors[2])
lines(tidy_data$DateTime, tidy_data$Sub_metering_3, col= colors[3])


# add a legend 
legend("topright", lty = 1, col = colors, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
