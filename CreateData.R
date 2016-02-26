############################
# CreateData.r
# Project: GitHubTestProject.Rproj

# File description: A file that creates a small data set and calculates some statistics

# Created: January 4, 2016
# R Version: 3.2.0
# GitHub: Yes
# Author: A Putt
############################

# Make some data
fishes <- data.frame(index = 1:10, redfish = rnorm(10,20,5), bluefish = rnorm(10,10,3), greenfish = rnorm(10,10,10))

# Plot the data
plot(fishes$index,fishes$bluefish,col="blue",pch=19,xlab="",ylab="",ylim=c(0,30),las=1)
points(fishes$index,fishes$redfish,col="red",pch=19)
points(fishes$index,fishes$greenfish,col="green",pch=19)
mtext(side=1,text="Index",line=3)
mtext(side=2,text="Fish Count",line=3)


# Create some text I might want to get rid of
# Another line
