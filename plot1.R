setwd("C:/Users/nianhua/Documents/R/Explore Data Analysis")

png(filename="plot1.png", width=480, height=480)
HPC<- read.table ("household_power_consumption2day.txt", header=T, sep=";")
hist(HPC$Global_active_power, col="red", main="Histogram of Global Active Power", xlab= "Global Active Power (kilowatts)", ylab="Frequency")
dev.off()
