## this code is part of the courseproject as dexcribed on: https://github.com/rdpeng/ExData_Plotting1
## the dataset used is "Electric power consumption [20Mb"], the zipfile downloaded from above site

##png1
## assuming the zip is unzipped in the R working directory
df<-read.table("exdata_data_household_power_consumption/household_power_consumption.txt",
               header = FALSE,sep = ";",
               na.strings = "?", nrows = 2880,
               skip = 66637)
## set graphic device for 1 plot (not really necessary as this is the default)
par(mfrow=c(1,1))

## plot the histogram, give it a title and label the x-axis, give the bars a nice color and set limits to the axes
with(df, hist(V3, main = "Global Active Power",xlab="Global Active Power (kilowatts)", 
              col ="darkorange", xlim=c(0,6), ylim=c(0, 1200)))

## copy the plot to a png-file with the heigt and width as required. 
## units="px" is not really necessary as it is the default
## give the file the corrrect name and save it in the working directory
dev.copy(png, width=480, height=480, units="px", file = "plot1.png")
## Don't forget to close the PNG device!
dev.off()