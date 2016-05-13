source('load_data.R')

subset_data <- Data()
png(filename='plot1.png', width=480, height=480, units='px')
subset_data$Global_active_power<- as.numeric(subset_data$Global_active_power)
hist(subset_data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")

dev.off()

