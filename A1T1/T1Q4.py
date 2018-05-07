""" Ass1 Task1 Q4 – GregL 83186557 - T1Q4.py """

import sys

# first parm should be the required Fibonacci number
if len(sys.argv) >= 2:
    fibnum = int(sys.argv[1])
else:    
    fibnum = int(input("Required Fibonacci number = "))
# display actual parms in use
print("argv=%s  fnum=%s \n" % (sys.argv,fibnum))

# set P2(prior2), P1(prior1), C(current) so first 2 fib numbers are 1
prior2=0; prior1=1; current=0   

for j in range(fibnum):
    # recalculate for new value of j (loop-control)
    prior2 = prior1
    prior1 = current
    current = prior2 + prior1
    print(' fib number %s = %s' % (j+1,current))