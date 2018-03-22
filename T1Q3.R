
## @knitr T1Q3

#****************************************************************************
#
# ACST890 Test1 Q3            Greg Lawrence 83186557.
#
#****************************************************************************

library(lattice)
library(gridExtra)

# [a] read data into R named as "dataset"
dataset <- read.csv("../tests/PersonenSchaden.csv", head=T)

# create clm (a shortcut) and delay (difference between repmonth and finmonth)
clm <- dataset$total
delay <- dataset$finmonth - dataset$repmonth

# convert coded variables to factors
dataset[2:10] <- lapply(dataset[2:10], factor)

# [b] various summary stats for "total" variable
cat("\n\n[b] statistics for settled claim amounts:",
    "\n\n   mean: ", mean(clm),
    "\n   variance: ", var(clm),
    "\n   standard deviation: ", sd(clm),
    "\n\n   largest: ", max(clm),
    "\n   smallest: ", min(clm),
    "\n\n   median: ", median(clm),
    "\n   bottom quartile: ", summary(clm)[2],
    "\n   top quartile: ", summary(clm)[5], "\n ")

# [c] histogram for dollar value of claims
histogram(clm, main="[c] Histogram for dollar value of claims",
          type="count", breaks=80)


# [d] histogram for settlement delay
histogram(delay, main="[d] Histogram for settlement delay",
          type="count", breaks=30)

# [e] histogram for legal representation
histogram(dataset$legrep, main="\n[e] % Histogram for legal representation")


# [f1] histogram for injury code 1
histogram(dataset$inj1, main="\n[f1] % Histogram for injury code 1")

# [f2] histogram for injury codes 2-5
h2 = histogram(dataset$inj2)
h3 = histogram(dataset$inj3)
h4 = histogram(dataset$inj4)
h5 = histogram(dataset$inj5)
grid.arrange(h2,h3,h4,h5, ncol=2, 
             top="\n [f2] % Histograms for injury codes 2-5")

# [g] comments on plots c/d/e/f (see document)

# [h] histogram for log of dollar value of claims
histogram(log(clm), main="[h] Histogram for log dollar value of claims", 
          type="count", breaks=30)

# [i] plot of claim size (and log claim size) vs operational time
par(mfrow=c(1,2), mar=c(4,4,2,2))
plot(dataset$op_time, clm, cex=0.4)
plot(dataset$op_time, log(clm), cex=0.4)
title(main="\n[i] Plots of claim size and log claim size vs op_time",outer=T)

# [j] comments on plots h/i (see document)

# [k] plot of log claim size vs operational time by legrep
xyplot(log(total) ~ op_time, groups=legrep, data=dataset,
       type="p",pch=19,cex=0.3, xlab="op time", ylab="log claims",
       main="[k] plot of log claim size vs operational time",
       auto.key=list(column=1,space="right",title="leg-rep",cex=0.7,rev=T))

#### end ####

