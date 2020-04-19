dat <- read.csv('household_power_consumption_snip.txt', sep=';', na.strings='?')
dat$datetime <- as.POSIXct(paste(dat$Date, dat$Time), format='%d/%m/%Y %H:%M:%S')

png(filename = 'plot2.png', width = 480, height = 480)

plot(dat$datetime, dat$Global_active_power, 
     type='l',
     xlab='',
     ylab='Global Active Power (kilowatts)')

dev.off()