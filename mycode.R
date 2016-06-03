setwd("C:/Users/Shobeir/Desktop/Fiverr/20160329/xxryan/")
mydata <- read.csv("dataset.csv",sep = ",")

myfunction <- function(df,numlookup,numavoid){
        TOTAL <- 0    
        for(i in 1:(ncol(df)-1)){
                TOTAL <- TOTAL + sum(df[,i] == numlookup & df[,i+1] != numavoid,
                                     na.rm =TRUE)
        }
        TOTAL<-TOTAL + sum(df[,ncol(df)] == numlookup, na.rm = TRUE)
}



occurance = myfunction(df = mydata,numlookup = 127,numavoid = 129)
occurance
