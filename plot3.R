## this code is part of the courseproject as dexcribed on: https://github.com/rdpeng/ExData_Plotting1
## the dataset used is "Electric power consumption [20Mb"], the zipfile downloaded from above site

##png3
## assuming the zip is unzipped in the R working directory
df<-read.table("exdata_data_household_power_consumption/household_power_consumption.txt",
               header = FALSE,sep = ";",
               na.strings = "?", nrows = 2880,
               skip = 66637)
## set graphic device for 1 plot (not really necessary as this is the default)
par(mfrow=c(1,1))

## plot the graph, type is line, no axes and no annotation
with(df, plot(V7, typ='l',axes=FALSE, ann=F,col=1))
## add the second sub_metering
with(df, lines(V8, typ='l', ann=F,col=2))
## add the third sub_metering
with(df, lines(V9, typ='l', ann=F,col=4))
## create the x-axis with the 3 ticks and annotation
axis(1, at=seq(1, 4300, by=1450), labels=c("Thu","Fri","Sat"))
## create the y-axis a little thicker
axis(2,lwd=2)
## lable the y-axis
title(ylab="Energy sub metering")
## create a box around the graph
box()
## create the legend for the three submeterings with the same coloring as the lines in the graph
legend("topright",pch='-',lwd=3,col=c(1,2,4),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

## copy the plot to a png-file with the heigt and width as required. 
## units="px" is not really necessary as it is the default
## give the file the corrrect name and save it in the working directory
dev.copy(png, width=480, height=480, units="px", file = "plot3.png")
## Don't forget to close the PNG device!
dev.off()