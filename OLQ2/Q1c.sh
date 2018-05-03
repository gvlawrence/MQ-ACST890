#! /bin/bash
# ACST890 - G.Lawrence - 83186557
# Q1c.sh - what has changed in your book between these two days

## default old suffix (override with 1st parm if supplied)
suff1="20180430"
if [ $# -ge 1 ]; then suff1=$1; fi

## default new suffix (override with 2nd parm if supplied)
suff2="20180501"
if [ $# -ge 2 ]; then suff2=$2; fi

## compare old vs new version of book using diff
echo -e "\n ## comparing $suff1 to $suff2 using diff \n"
diff my_book_$suff1.txt my_book_$suff2.txt