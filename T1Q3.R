
## @knitr DM1

#****************************************************************************
# STAT828 Proj2 - Data Mining project
#         Greg Lawrence 83186557.
# 
#  Data checking and preparation from supplied data
#****************************************************************************
library(pacman)
p_load(outliers,Amelia,VIM,foreign)

# [a] read data into R named as "dataset"
dataset <- read.csv("../tests/PersonenSchaden.csv", head=T)
aggr(dataset)$missings

clm <- dataset$total
delay <- dataset$finmonth - dataset$accmonth

# [b] various summary stats for "total" variable
cat("\nstatistics for settled claim amounts:",
    "\n  mean: ",mean(clm),
    "\n  variance: ",var(clm),
    "\n  standard deviation: ",sd(clm),
    "\n  largest: ",max(clm),
    "\n  smallest: ",min(clm),
    "\n  median: ",median(clm),
    "\n  bottom quartile: ",summary(clm)[2],
    "\n  top quartile: ",summary(clm)[5])

# [c] histogram for dollar value of claims
histogram(clm,type="count",breaks=90)

# [d] histogram for settlement delay
histogram(delay,type="count",breaks=30)

# [e] histogram for legal representation
histogram(dataset$legrep)

# [f] histogram for injury code(s)
histogram(dataset$inj1,xlim=c(0,10))
histogram(dataset$inj2,xlim=c(0,10))
histogram(dataset$inj3,xlim=c(0,10))
histogram(dataset$inj4,xlim=c(0,10))
histogram(dataset$inj5,xlim=c(0,10))

# [g] comments on plots c/d/e/f (see document)

# [h] histogram for log of dollar value of claims
histogram(log(clm),type="count",breaks=30)

# [i] plot of claim size (and log claim size) vs operational time
par(mfrow=c(1,2))
plot(dataset$op_time,clm)
plot(dataset$op_time,log(clm))

# [j] comments on plots h/i (see document)

# [k] plot of log claim size vs operational time by legrep
par(mfrow=c(1,1))
plot(dataset$op_time,log(dataset$total),cex=0.4,col=dataset$legrep+2)

xyplot(log(dataset$total)~dataset$op_time,groups=dataset$legrep,
       type="p",pch=19,cex=0.3,main="k1",
       auto.key=list(column=1,space="right",adj=1,size=3,rev=TRUE),
       ylab="log claims",xlab="op time")

#### end ####