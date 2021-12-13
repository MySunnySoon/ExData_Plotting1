# source("plot3.R")
png("plot3.png", width=480, height=480)
plot(x = hpcs$DateTime, y = hpcs$Sub_metering_1, xlab="", type="l", ylab="Energy sub metering")
lines(x = hpcs$DateTime, y = hpcs$Sub_metering_2, col="red")
lines(x = hpcs$DateTime, y = hpcs$Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=1,legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()

