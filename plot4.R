dat <- read.csv('household_power_consumption_snip.txt', sep=';', na.strings='?')
dat$datetime <- as.POSIXct(paste(dat$Date, dat$Time), format='%d/%m/%Y %H:%M:%S')


png(filename = 'plot4.png', height = 480, width = 480)

par(mfcol = c(2,2))

# Plot top left corner
plot(dat$datetime, dat$Global_active_power, 
     type = 'l',
     xlab = '',
     ylab = 'Global Active Power')

# Plot bottom left corner
plot(dat$datetime, dat$Sub_metering_1,
     type = 'l',
     xlab = '',
     ylab = 'Energy sub metering')

lines(dat$datetime, dat$Sub_metering_2, col = 'red')

lines(dat$datetime, dat$Sub_metering_3, col = 'blue')

legend(x = 'topright',
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       lty = 1,
       bty = 'n',
       col = c('black', 'red', 'blue'))


# Plot top right corner
plot(dat$datetime, dat$Voltage,
     xlab = 'datetime',
     ylab = 'Voltage',
     type = 'l')

# Plot bottom right corner
plot(dat$datetime, dat$Global_reactive_power,
     type = 'l',
     xlab = 'datetime',
     ylab = 'Global_reactive_power')

dev.off()
