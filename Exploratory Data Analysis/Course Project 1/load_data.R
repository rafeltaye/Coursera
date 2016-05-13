
library(dplyr)
library(tidyr)
library(lubridate)

Data <- function() {
  read.table('household_power_consumption.txt', sep=';', header=TRUE)%>%
    tbl_df%>%
    mutate(Date = as.Date(Date, '%d/%m/%Y')) %>%
    mutate(Time = as.POSIXct(strptime(paste(Date, ' ', Time), '%Y-%m-%d %H:%M:%S')))%>%
    filter(Time >= strftime('2007-02-01 00:00:00'), Time < strftime('2007-02-03 00:00:00'))
}



#household_power_consumption<- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
#household_power_consumption<-tbl_df(household_power_consumption)
##subset_data<-household_power_consumption1 %>% filter(Date>"2007-01-31"& Date<"2007-02-02")
