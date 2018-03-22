
## @knitr T1Q1

#****************************************************************************
# ACST890 Test1 Q1            Greg Lawrence 83186557.
#****************************************************************************

# fib890 function
#    inparm: n0 (value to use for n)
#    output: first n Fibonacci numbers

fib890 <- function(n0){
  
  cat("n=",n0,"\n")
  fibP2=0  # 2nd prior value 
  fibP1=0  # 1st prior value 
  fibC=1   # current fib value
  
  for (lc in 1:n0) {
    # separately handle n0 when it is 1
    if (lc==1) {
      cat("fib number 1 = 1", "\n")
    }
    
    # recalculate for new value of lc (loop-control)
    else {
      fibP2 = fibP1
      fibP1 = fibC
      fibC = fibP2 + fibP1
      cat("fib number",lc,"=",fibC,"\n")
    }
  }
}


## test fib890 function for a range of n0 values
fib890(1)

fib890(4)

fib890(16)
