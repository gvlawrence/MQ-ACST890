#! /bin/bash
# ACST890 - G.Lawrence - 83186557
# Q1e.sh - delete lines 100 to 200 of your novel

## default suffix (override with 1st parm if supplied)
suff1="20180501"
if [ $# -ge 1 ]; then suff1=$1; fi
name1=my_book_$suff1.txt

## use sed to delete lines 100-200 (backup to *bkup first)
echo -e "\n ## deleting lines 100-200 of $name1 using sed \n"
sed -ibkup '100,200 d' $name1

## show what has changed
echo -e "\n ## show diffs between bkup and changed file \n"
diff $name1\bkup $name1