dat <- read.csv('household_power_consumption_snip.txt', sep=';', na.strings='?')
dat$datetime <- as.POSIXct(paste(dat$Date, dat$Time), format='%d/%m/%Y %H:%M:%S')

png(filename = 'plot3.png', height = 480, width = 480)

plot(dat$datetime, dat$Sub_metering_1,
     type = 'l',
     xlab = '',
     ylab = 'Energy sub metering')
lines(dat$datetime, dat$Sub_metering_2,
      col = 'red')
lines(dat$datetime, dat$Sub_metering_3,
      col = 'blue')
legend(x = 'topright',
       legend=c('Sub_metering_1', 
                'Sub_metering_2',
                'Sub_metering_3'),
       lty = 1,
       col = c('black', 'red', 'blue'))

dev.off()