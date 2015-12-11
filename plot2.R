## this code is part of the courseproject as dexcribed on: https://github.com/rdpeng/ExData_Plotting1
## the dataset used is "Electric power consumption [20Mb"], the zipfile downloaded from above site

##png2
## assuming the zip is unzipped in the R working directory
df<-read.table("exdata_data_household_power_consumption/household_power_consumption.txt",
               header = FALSE,sep = ";",
               na.strings = "?", nrows = 2880,
               skip = 66637)
## set graphic device for 1 plot (not really necessary as this is the default)
par(mfrow=c(1,1))

## plot the graph, type is line, no axes and no annotation
with(df, plot(V3, typ='l',axes=F, ann=F))
## create the x-axis with 3 ticks and label the ticks
axis(1, at=seq(1, 4300, by=1450), labels=c("Thu","Fri","Sat"))
## create the y-axis with everything default
axis(2)
##set the lable for the y-axis
title(ylab="Global Active Power (kilowatts)")
## create a box around the plot
box()

## copy the plot to a png-file with the heigt and width as required. 
## units="px" is not really necessary as it is the default
## give the file the corrrect name and save it in the working directory
dev.copy(png, width=480, height=480, units="px", file = "plot2.png")
## Don't forget to close the PNG device!
dev.off()