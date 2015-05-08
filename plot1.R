# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Coursera.org: Exploratory Data Analysis
# Course Project 1
#
# This script creare plot1.png
#
# Date: 08.05.2015
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# reading the data
source("tidy_data.R")
tidy_data <- take_tidy_data("household_power_consumption.txt")


# call to the device driver
png(file="plot1.png",width = 480,height = 480)
hist(tidy_data$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
