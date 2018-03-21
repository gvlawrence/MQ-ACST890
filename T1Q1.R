################################################
# fib890 function
#   inparm: n0 (value to use for n)
#   output: first n Fibonacci numbers
################################################
fib890 <- function(n0){
  cat("n=",n0,"\n")
  fibP2=0; fibP1=0; fibC=1
  for (lc in 1:n0) {
    #cat("lc=",lc,"curr=",fibC,"prev=",fibP1,"\n")
    if (lc==1) {
      cat("fib number 1 = 1", "\n")
    }
    else {
      fibP2 = fibP1
      fibP1 = fibC
      fibC = fibP2 + fibP1
      cat("fib number",lc,"=",fibC,"\n")
    }
  }
}
fib890(1)
fib890(2)
fib890(4)
fib890(6)

