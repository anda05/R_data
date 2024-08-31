auto<-read.csv("auto-mpg.csv")
print(auto)
nrow(auto)
ncol(auto)
summary(auto)
colnames(auto)
print(auto$cylinders)
auto$cylinders<-factor(auto$cylinders,
                       level=c(3,4,5,6,8),
                       labels=c("3cyl",'4cyl','5cyl','6cyl','8cyl'))
print(auto$cylinders)
png(file = "Acceleration_histogram.jpg")
hist(table(auto$acceleration),
        main="Acceleration of cars",
        xlab="Acceleration",
        col="blue")
dev.off()
png(file = "mpg_histogram.jpg")
hist(table(auto$mpg),
        main="mpg of cars",
        xlab="mpg",
        col="red")
dev.off()
png(file = "mpg_barplot.jpg")
barplot(auto$mpg,
     main="mpg of cars",
     xlab="mpg",
     ylab="count",
     col="green")
dev.off()
table(auto$cylinders)
png(file = "Freqency_of_cylinders_barplot.jpg")
barplot(table(auto$cylinders),
        main="Frequency count of cylinders",
        xlab="cylinders",
        ylab="frequency count",
        col="yellow")
dev.off()

png(file = "boxplot_mpg.jpg")
boxplot(auto$mpg, xlab = "Miles per gallon",
        col = "lightgray")
dev.off()

png(file = "boxplot_mpg_cyl.jpg")
boxplot(mpg ~ cylinders, data = auto)
dev.off()

png(file = "plot_mpg_disp.jpg")
pairs(~mpg +displacement, data=auto)
dev.off()

png(file = "mixplot.jpg")
pairs(~mpg +displacement+horsepower, data=auto)
dev.off()
