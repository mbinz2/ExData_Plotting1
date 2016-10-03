# Exploratory Data Analysis
# Week 1 - Assignment
# Plot 1


# Pull in data and clean
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors = FALSE)
data2 <- subset(data,Date == "1/2/2007" | Date == "2/2/2007")
rangeNum <-3:9 # set range of columns to be numeric
data2[rangeNum] <- lapply(data2[rangeNum],as.numeric)
data2$dateTime <- strptime(paste(data2$Date, data2$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# Plot 1
png("Plot1.png")
hist(data2$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
