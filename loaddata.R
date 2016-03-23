# load data

# set working directory
setwd("~/Documents/GitHub/ExData_Plotting1")

# download file from url and unzip
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
data <- tbl_df(read.table(unz(temp, "household_power_consumption.txt"),header=T,na.strings="?",sep=";",stringsAsFactors=F))
unlink(temp)

# keep only 2007/2/1~2
data<-data[grep("^[1,2]/2/2007",data$Date),]

# combine date & time
data<-select(mutate(data,DateTime=paste(Date,Time)),-Date,-Time)

