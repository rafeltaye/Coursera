

URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file (URL, "C:/Users/rtaye/Documents/Coursera/Getting and Cleaning Data/Housing_2006.csv")
Housing_2006 <- read.table("Housing_2006.csv", header = TRUE, sep = ',')
Housing_2006<- tbl_df(Housing_2006)

Housing_2006%>% select(VAL)%>% filter(VAL>=24)%>% count()

URL_1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
download.file(URL_1, "C:/Users/rtaye/Documents/Coursera/Getting and Cleaning Data/nat_gas.xlsx")
nat_gas<-read.xlsx("nat_gas.xlsx", header=FALSE)

#4
URL_2<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
xData <- getURL(URL_2)
rest<-xmlParse(xData)
rootNode<-xmlRoot(rest)
names(rootNode)
rootNode[[1]][[1]]
zipcode<-xpathSApply(rootNode,"//zipcode", xmlValue)

