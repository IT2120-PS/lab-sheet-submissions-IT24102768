setwd("C:\\Users\\DELL\\Desktop\\IT24102768-PS")

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
fix(Delivery_Times)
attach(Delivery_Times)

histogram <- hist(Delivery_Time_.minutes.,
                  main="Histogram for number of delivery times in minutes",
                  breaks = seq(20,70, length = 10), right = FALSE)

# Histogram has a bimodal shape with peaks around 35-40 minutes and 55-60 minutes.
#Distribution is roughly symmetric and slight right-skew.

breaks <- round(histogram$breaks)
frequency <- histogram$counts
cum.frequency <- cumsum(frequency)

plot (breaks[-1], cum.frequency, type = 'l',
      main = "Cumalative Frequency Polygon for Delivery Time",
      xlab="Delivery Time(minutes)",
      ylab = "Cumulative Frequency",
      ylim = c(0, max (cum.frequency)))

detach(Delivery_Times)