# source("plot1.R") 
rm(list = ls())
library(dplyr)
library(data.table)

fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filename<-"./data/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, filename, method="curl")
unzip(filename)

hpc <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
hpcs= hpc[(hpc$Date=="1/2/2007") | (hpc$Date=="2/2/2007"),]
hist(hpcs$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.copy(png, file = "plot1.png", width=480, height=480)
dev.off()

