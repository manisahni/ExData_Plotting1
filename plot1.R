data <- read.csv("~/Desktop/coursera sept 2015/EDA/household_power_consumption.txt", sep=";")## read in the file
install.packages("dplyr") # install dplyr
library(dplyr) # load dplyr
subset <- filter(data,(Date %in% c("1/2/2007","2/2/2007"))) # select dates

globalActivePower <- as.numeric(subset$Global_active_power) ## conver to numeric
png("plot1.png", width=480, height=480) # png code
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") # lot