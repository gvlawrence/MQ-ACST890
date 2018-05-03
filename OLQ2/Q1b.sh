#! /bin/bash
# ACST890 - G.Lawrence - 83186557
# Q1b.sh - change all '<th>' to '<th class="C">' on lines 50-100

## default to foo.html (override with 1st parm if supplied)
file1="foo.html"
if [ $# -ge 1 ]; then file1=$1; fi

## globally change <th> clause (backup to *bkup first)
echo -e "\n ## changing <th> in file $file1 using sed \n"
sed -ibkup '50,100 s/<th>/<th class="C">/g' $file1

## show what has changed
echo -e "\n ## show diffs between bkup and changed file \n"
diff $file1\bkup $file1