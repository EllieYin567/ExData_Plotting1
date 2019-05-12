#Plot 3
png("plot3.png", width = 480, height = 480)
plot(feb$Sub_metering_1,ylab="Energy sub metering", typ='l', xlab="", xaxt='n')#plot the first line
lines(feb$Sub_metering_2,col="red")#add on other groups
lines(feb$Sub_metering_3,col="blue")
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))
legend("topright",lty=c(1,1), col = c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),cex = 0.6)
dev.off()