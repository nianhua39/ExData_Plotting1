setwd("C:/Users/nianhua/Documents/R/Explore Data Analysis")

png(filename="plot2.png", width=480, height=480)

HPC<- read.table ("household_power_consumption2day.txt", header=T,sep=";")
HPC$dtime <-  paste(HPC$Date, HPC$Time)
HPC$dtime <- strptime(HPC$dtime, "%d/%m/%Y %H:%M:%S")
plot(HPC$dtime, as.numeric(HPC$Global_active_power), type = 'l', xlab="", ylab="Global Active Power(kilowatts)")

dev.off()
