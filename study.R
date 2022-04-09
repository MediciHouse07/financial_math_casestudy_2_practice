source("fm_casestudy_1_0.r")

library(zoo)
load("casestudy_1_0.RData")

GE <- read.csv("data/GE_Group_NonAdjust.csv")

names(GE)[1:1] <- "Date"
head(GE)

GE_Plot <- GE[c('Date','Close')]
# rownames(GE_Plot) <- GE$Date
# plot(GE_Plot)

# library(graphics)
library(quantmod)

plot(GE_Plot[,"Date"],GE_Plot[,"Close"], ylab="Price",main="GE Stock", type="l")
