dat <- read.csv('household_power_consumption_snip.txt', sep=';', na.strings='?')
dat$datetime <- as.POSIXct(paste(dat$Date, dat$Time), format='%d/%m/%Y %H:%M:%S')

png(filename = 'plot1.png', width = 480, height = 480)

hist(dat$Global_active_power, 
     col = 'red',
     xlab = 'Global Active Power (kilowatts)',
     main = 'Global Active Power')

dev.off()