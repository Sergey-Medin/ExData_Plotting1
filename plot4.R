# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Coursera.org: Exploratory Data Analysis
# Course Project 1
#
# This script creare plot4.png
#
# Date: 08.05.2015
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# reading the data
source("tidy_data.R")
tidy_data <- take_tidy_data("household_power_consumption.txt")


# call to the device driver
png(file = "plot4.png", width = 480, height = 480)

# 4 figures arranged in 2 rows and 2 columns
par(mfrow = c(2,2))

# --- [ PLOT 1 ] ---
# get the range for the x and y axis 
xrange <- range(tidy_data$DateTime) 
yrange <- range(tidy_data$Global_active_power) 
# set up the plot 
plot(xrange, yrange, type="n", xlab="", ylab="Global Active Power") 
lines(tidy_data$DateTime, tidy_data$Global_active_power, lty=1)
# ------------------

# --- [ PLOT 2 ] ---
# get the range for the x and y axis 
xrange <- range(tidy_data$DateTime) 
yrange <- range(tidy_data$Voltage) 
# set up the plot
plot(xrange, yrange, type="n", xlab="datetime", ylab="Voltage") 
lines(tidy_data$DateTime, tidy_data$Voltage, lty=1)
# ------------------

# --- [ PLOT 3 ] ---
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
legend("topright", bty = "n", lty = 1, col = colors, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
# ------------------

# --- [ PLOT 4 ] ---
# get the range for the x and y axis 
xrange <- range(tidy_data$DateTime) 
yrange <- range(tidy_data$Global_reactive_power) 
# set up the plot
plot(xrange, yrange, type="n", xlab="datetime", ylab="Global_reactive_power") 
lines(tidy_data$DateTime, tidy_data$Global_reactive_power, lty=1)
# ------------------

dev.off()