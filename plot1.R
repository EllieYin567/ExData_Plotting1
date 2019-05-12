library(data.table)
#Read data
total <- fread("household_power_consumption.txt")
feb <- subset(total, Date %in% c("1/2/2007", "2/2/2007"))

#Plot 1
png("plot1.png", width = 480, height = 480)
hist(as.numeric(feb$Global_active_power), col="red", main="Gloable Active Power", xlab = "Gloable Active Power (kilowatts)")
dev.off()


