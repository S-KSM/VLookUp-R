mydata <- read.csv("dataset.csv",sep = ",")

myfunction <- function(df,numlookup,numavoid){
     TOTAL <- 0    
     for(i in 1:(ncol(df)-1)){
         TOTAL <- TOTAL + sum(df[,i] == numlookup & df[,i+1] != numavoid,
                              na.rm =TRUE)
     }
     TOTAL<-TOTAL + sum(df[,ncol(df)] == numlookup, na.rm = TRUE)
 }

 
myfunction(df = mydata,numlookup = 108,numavoid = 174)
occurance = myfunction(df = mydata,numlookup = 108,numavoid = 174)
occurance