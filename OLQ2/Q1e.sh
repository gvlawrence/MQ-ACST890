#! /bin/bash
# ACST890 - G.Lawrence - 83186557
# Q1e.sh - delete lines 100 to 200 of your novel

## default suffix (override with 1st parm if supplied)
suff1="20180501"
if [ $# -ge 1 ]; then suff1=$1; fi

## use sed to delete lines 100-200 (backup to *bkup first)
sed -ibkup '100,200 d' my_book_$suff1.txt

## show what has changed
diff my_book_$suff1.txtbkup my_book_$suff1.txt