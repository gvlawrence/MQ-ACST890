#! /bin/bash       
#    Greg Lawrence  83186557
#    - inparm ($1): value to use for n
#    - output: first n Fibonacci numbers

# set P2(prior2), P1(prior1), C(current) so first 2 fib numbers are 1
fibP2=0; fibP1=1; fibC=0   

for lc in $(seq 1 $1); do
  # recalculate for new value of lc (loop-control)
  fibP2=$fibP1
  fibP1=$fibC
  fibC=$(expr $fibP2 + $fibP1)
  echo "fib number" $lc "=" $fibC
done