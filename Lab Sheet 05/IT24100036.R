setwd("C:\\Users\\IT24100036\\Desktop\\IT24100036_Lab_05")
getwd()
Delivery_times <- read.table("Exercise - Lab 05.txt",header=TRUE)
print(Delivery_times)

hist(Delivery_times$Delivery, breaks=seq(20,70,by=5), right=TRUE, 
main="Histogram of Delivery Times",xlab="Delivery_times", ylab="Frequency")

Delivery_times_freq <- hist(Delivery_times$Delivery,
                            breaks= seq(20,70,by=5),
                            right=TRUE,
                            plot= FALSE)
cumulative_freq <- cumsum(Delivery_times_freq$counts)

plot(Delivery_times_freq$mids, cumulative_freq, type= "o",
     main="Cumulative Frequency Polygon (Ogive) of Delivery Times",
     xlab="Delivery Times",
     ylab="Cumulative Frequency",
     pch=16)

