png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2),mar=c(4,4,2,1))

plot(feb$Global_active_power, typ='l', ylab="Global Active Power (kilowatts)", xlab="", xaxt='n') 
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))

feb$Voltage<-as.numeric(as.character(feb$Voltage))
plot(feb$Voltage, typ='l', ylab="Voltage", xlab="datetime", xaxt='n')
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))#plot the voltage data

feb$Sub_metering_1<-as.numeric(as.character(feb$Sub_metering_1))#change the data class from factor to numeric
feb$Sub_metering_2<-as.numeric(as.character(feb$Sub_metering_2))
feb$Sub_metering_3<-as.numeric(as.character(feb$Sub_metering_3))
plot(feb$Sub_metering_1,ylab="Energy sub metering", typ='l', xlab="", xaxt='n')#plot the first line
lines(feb$Sub_metering_2,col="red")#add on other groups
lines(feb$Sub_metering_3,col="blue")
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))
legend("topright",lty=c(1,1), col = c("black","red", "blue"), bty = "n",legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),cex = 0.4)

feb$Global_reactive_power<-as.numeric(as.character(feb$Global_reactive_power))
plot(feb$Global_reactive_power, typ='l', ylab="Global_reactive_power", xlab="datetime", xaxt='n')
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))#plot the Global_reactive_power data

dev.off()