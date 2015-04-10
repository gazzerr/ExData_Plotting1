# this file reads and prepares data for drawing plots for Course project 1 of Exploratory Data Analysis
# the project data file (household_power_consumption.txt) is expected to be in the current directory

setwd("H:/githome/4dataanalysis/ExData_Plotting1")
data<-read.csv("household_power_consumption.txt",stringsAsFactors =FALSE,sep=";",header=TRUE, dec = ".")
library(dplyr)
datatable <- tbl_df(data)
neededdata <- filter(datatable, (Date=="1/2/2007" | Date=="2/2/2007") & Global_active_power!="?")
library(lubridate)
# add another column to be used on the plots later
neededdataWithDateTime<-mutate(neededdata, DateTime=as.POSIXct(paste(neededdata$Date, neededdata$Time), format="%d/%m/%Y%H:%M:%S") )