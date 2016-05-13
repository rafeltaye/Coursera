source('load_data.R')

subset_data <- Data()

png(filename='plot2.png', width=480, height=480, units='px')

start = as.POSIXct(strftime("2007-02-01 00:00:00"))
end = as.POSIXct(strftime("2007-02-03 00:00:00"))
plot(subset_data$Time,
     subset_data$Global_active_power,
     xlim=c(start, end),
     xaxt="n",
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)"
)
axis.POSIXct(1, at=seq(start, end, by="day"), format="%a")

dev.off()