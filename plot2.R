#Plot 2
png("plot2.png", width = 480, height = 480)
plot(feb$Global_active_power, typ='l', ylab="Global Active Power (kilowatts)", xlab="", xaxt='n')
axis(1, at=c(0,1440,2880),labels=c('Thu','Fri','Sat'))
dev.off()