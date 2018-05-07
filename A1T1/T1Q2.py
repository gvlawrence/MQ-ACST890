""" Ass1 Task1 Q2 – GregL 83186557 - T1Q2.py """

import random
import sys

# first parm is number of tosses - just toss once if not suppied 
numtoss = int(sys.argv[1]) if len(sys.argv) >= 2 else 1
print('numtoss=' + str(numtoss))    

# randomly generate 1=heads or 2=tails and print result
for j in range(numtoss):
    print("heads" if random.randint(1,2)==1 else "tails")