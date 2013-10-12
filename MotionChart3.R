library(zoo)
load("ForumPosts.RData")
colnames(motion.data3)[1:4] <- c("Category","Date","Posts","Views")
levels(motion.data3$Category) <- c("Biology","Chemistry","Chemistry","Climate","CS","Engineering","General","Math",
                                   "Philosophy & Religion","Physics","Politics","Speculations","Staff")
motion.data3$Date <-as.POSIXlt(motion.data3$Date)$year + 1900
motion.data3 <- aggregate(formula=cbind(Views,Posts)~Category+Date,FUN=sum,data=motion.data3)
p <- gvisMotionChart(xvar="Views",yvar="Posts",data=motion.data3,timevar="Date",idvar="Category",
                     options=list(width=650, height=350))
plot(p)