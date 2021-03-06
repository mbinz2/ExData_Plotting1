# Exploratory Data Analysis
# Week 1 - Assignment
# Plot 3


# Pull in data and clean
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
data2 <- subset(data,Date == "1/2/2007" | Date == "2/2/2007")
rangeNum <-3:9 # set range of columns to be numeric
data2[rangeNum] <- lapply(data2[rangeNum],as.numeric)
data2$dateTime <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# Plot 3
png("Plot3.png")
plot(data2$dateTime,data2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(data2$dateTime,data2$Sub_metering_2,type="l",col="red")
lines(data2$dateTime,data2$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,lwd=2.5)
dev.off()  
