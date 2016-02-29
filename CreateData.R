############################
# CreateData.r
# Project: GitHubTestProject.Rproj

# File description: A file that creates a small data set and calculates some statistics

# Created: January 4, 2016
# R Version: 3.2.0
# GitHub: Yes
# Author: A Putt
############################

require(dplyr)
require(magrittr)

# Make some data
fishes <- data.frame(index = 1:10, redfish = rnorm(10,20,5), bluefish = rnorm(10,10,3), greenfish = rnorm(10,10,10))

# Plot the data
plot(fishes$index,fishes$bluefish,col="#de2d26",pch=19,xlab="",ylab="",ylim=c(0,30),las=1)
points(fishes$index,fishes$redfish,col="#fc9272",pch=19)
points(fishes$index,fishes$greenfish,col="#fee0d2",pch=19)
mtext(side=1,text="Index",line=3)
mtext(side=2,text="Fish Count",line=3)


x<- fishes%>%
  group_by(index)%>%
  mutate(sum=sum(redfish,bluefish,greenfish))

print("confusing")

#Doug
# Plot the data
plot(fishes$index,fishes$bluefish,col="#de2d26",type="b",pch=19,xlab="",ylab="",ylim=c(0,30),las=1,cex=1.5)
points(fishes$index,fishes$redfish,col="#fc9272",type="b",pch=19,cex=1.5)
points(fishes$index,fishes$greenfish,col="#fee0d2",type="b",pch=19,cex=1.5)
mtext(side=1,text="Index of Doug",line=3)
mtext(side=2,text="Doug's fish counts")
