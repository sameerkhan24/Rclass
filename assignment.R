library(reshape2)
library(dplyr)
id <- c(1,2,3,4,5)
names <- c("frank","jim","albert","tintin","sam")
section <- c("A","B","B","C","A")
weight <- c(70,80,90,56,76)

# making the two dataframes
a<-data.frame(id,names,section)
b <- data.frame(id,weight)

#merging them
df <- merge(a,b,by="id",all = TRUE)

#adding new row
q <- data.frame(id=c(6),names=c("david"),section=c("C"),weight=c(87))
newdf = rbind(df,q)

#adding new column
df2 = data.frame(place = c("Delhi","Seattle","London","Moscow","Mumbai","Kolkata"))
newdf = cbind(newdf,df2)

#subset of dataframe
subdf <- subset(newdf,weight>75,select = c(names,section))

#changing the value of 3rd row 2nd column
newdf[3,2] = "seema"

#deleting last row
del = newdf[-6,]

#melting and dcast
resh<- melt(newdf,id.vars = c("id","names","place"),measure.vars = c("section","weight"))
deresh = dcast(resh,id + names + place ~...)