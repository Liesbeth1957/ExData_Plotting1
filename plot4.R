## this code is part of the courseproject as dexcribed on: https://github.com/rdpeng/ExData_Plotting1
## the dataset used is "Electric power consumption [20Mb"], the zipfile downloaded from above site

##png4
## assuming the zip is unzipped in the R working directory
df<-read.table("exdata_data_household_power_consumption/household_power_consumption.txt",
               header = FALSE,sep = ";",
               na.strings = "?", nrows = 2880,
               skip = 66637)

## set graphic device for 4 plots
par(mfrow=c(2,2))

## plot for first row, first column
## plot the graph, type is line, no axes and no annotation
with(df, plot(V3, typ='l',axes=F, ann=F))
## create the x-axis with 3 ticks and label the ticks, make the line somewhat thicker but not the ticks
axis(1, at=seq(1, 4300, by=1450), labels=c("Thu","Fri","Sat"), lwd=2, lwd.ticks=1)
## create the y-axis a little thicker
axis(2, lwd=2)
##set the lable for the y-axis, but smaller than the other labels
title(cex.lab=0.75,ylab="Global Active Power")
## create a box around the plot
box()

## plot for first row, second column
## plot the graph, type is line, no axes and no annotation
with(df, plot(V5, typ='l',axes=FALSE, ann=F))
## create the x-axis with 3 ticks and label the ticks, make the line somewhat thicker but not the ticks
axis(1, at=seq(1, 4300, by=1450), labels=c("Thu","Fri","Sat"), lwd=2, lwd.ticks=1)
## create the y-axis a little thicker
axis(2, lwd=2)
##set the lable for the y-axis, but smaller than the other labels
## and add datatime under the x-axis
title(cex.lab=0.75,sub="datetime",ylab="Voltage")
## create a box around the plot
box()

## plot the graph, type is line, no axes and no annotation
with(df, plot(V7, typ='l',axes=FALSE, ann=F,col=1))
## add the second sub_metering
with(df, lines(V8, typ='l', ann=F,col=2))
## add the third sub_metering
with(df, lines(V9, typ='l', ann=F,col=4))
## create the x-axis with 3 ticks and label the ticks, make the line somewhat thicker but not the ticks
axis(1, at=seq(1, 4300, by=1450), labels=c("Thu","Fri","Sat"), lwd=2, lwd.ticks=1)
## create the y-axis a little thicker
axis(2,lwd=2)
##set the lable for the y-axis, but smaller than the other labels
title(cex.lab=0.75,ylab="Energy sub metering")
## create a box around the plot
box()
## create the legend for the three submeterings with the same coloring as the lines in the graph
## but do not surround the legend with a box bty='n'
legend("topright",bty='n',pch='-',lwd=4,col=c(1,2,4),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

## plot the graph, type is line, no axes and no annotation
with(df, plot(V4, typ='l',axes=FALSE, ann=F))
## create the x-axis with 3 ticks and label the ticks, make the line somewhat thicker but not the ticks
axis(1, at=seq(1, 4300, by=1450), labels=c("Thu","Fri","Sat"), lwd=2, lwd.ticks=1)
## create the y-axis a little thicker
axis(2, lwd=2)
## set the lable for the y-axis, but smaller than the other labels
## and add datatime under the x-axis
title(sub="datetime",cex.lab=0.75,ylab="Global_reactive_power")
box()


## copy the plot to a png-file with the heigt and width as required. 
## units="px" is not really necessary as it is the default
## give the file the corrrect name and save it in the working directory
dev.copy(png, width=480, height=480, units="px", file = "plot4.png")
## Don't forget to close the PNG device!
dev.off()