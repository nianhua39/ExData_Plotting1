setwd("C:/Users/nianhua/Documents/R/Explore Data Analysis")
 
png(filename="plot4.png", width=480, height=480)
# dev.off()
par(mfrow = c(2, 2), cex=0.65)

# first blot
HPC<- read.table ("household_power_consumption2day.txt", header=T, sep=";")
HPC$dtime <-  paste(HPC$Date, HPC$Time)
HPC$dtime <- strptime(HPC$dtime, "%d/%m/%Y %H:%M:%S")
plot(HPC$dtime, as.numeric(HPC$Global_active_power), type = 'l', xlab="", ylab="Global Active Power(kilowatts)")





# second plot
 plot(HPC$dtime, as.numeric(HPC$Voltage), type = 'l', xlab="datetime", ylab="Voltage")


# third plot

 plot(HPC$dtime, as.numeric(HPC$Sub_metering_1), type = 'l', xlab="", ylab="Energy Sub mettering", col = 'Black')
 lines(HPC$dtime, as.numeric(HPC$Sub_metering_2),   col = 'Red')
 lines(HPC$dtime, as.numeric(HPC$Sub_metering_3),   col = 'Blue')

legend('topright', c("Sub_mettering1","Sub_mettering2", "Sub_mettering3"),
lty=c(1,1,1), lwd=c(2.5,2.5, 2.5),col=c("black", "red","blue")) 

# fourth
 plot(HPC$dtime, as.numeric(HPC$Global_reactive_power), type = 'l', xlab="datetime", ylab="Global_reactive_power")

dev.off()