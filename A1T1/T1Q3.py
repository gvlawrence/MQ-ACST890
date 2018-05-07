""" Ass1 Task1 Q3 – GregL 83186557 - T1Q3.py """

from sys import argv

# setup above tax table into arrays supporting the calculation
TabLow = [0, 18200, 37000, 87000, 180000]
TaxBase = [0,    0,  3572, 19822,  54532]
TaxRate = [0, 0.19, 0.325,  0.37,   0.45]

# first parm should be gross income, otherwise prompt for it
gInc = float(argv[1] if len(argv) >= 2 else input("Gross income? "))

# using tax table values, calculate TaxOwed
if gInc < TabLow[1]:
    TaxOwed = 0
elif gInc < TabLow[2]:
    TaxOwed = TaxBase[1] + TaxRate[1] * (gInc - TabLow[1])
elif gInc < TabLow[3]:
    TaxOwed = TaxBase[2] + TaxRate[2] * (gInc - TabLow[2])
elif gInc < TabLow[4]:
    TaxOwed = TaxBase[3] + TaxRate[3] * (gInc - TabLow[3])
else:
    TaxOwed = TaxBase[4] + TaxRate[4] * (gInc - TabLow[4])

# display gross income with calculated TaxOwed and after-tax income
print("\n    gross income = %.2f" % gInc)
print(  "   tax liability = %.2f" % TaxOwed)
print(  "after-tax income = %.2f" % (gInc-TaxOwed) )