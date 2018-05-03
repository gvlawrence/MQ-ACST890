#! /bin/bash -v
# ACST890 - G.Lawrence - 83186557
# Q1d.sh - use sed to print out lines 100 to 200

## default suffix (override with 1st parm if supplied)
suff1="20180501"
if [ $# -ge 1 ]; then suff1=$1; fi

## print lines 100-200 to default output using sed	
sed -n '100,200p' my_book_$suff1.txt