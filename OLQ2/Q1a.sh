#! /bin/bash
# ACST890 - G.Lawrence - 83186557
# Q1a.sh - find all check marks in a html file

## default to search foo.html (override with 1st parm if supplied)
file1="foo.html"
if [ $# -ge 1 ]; then file1=$1; fi

## if 2nd parameter supplied (any value) use sed, otherwise use grep
if [ $# -ge 2 ]; then 
	echo -e "\n ## finding check marks in $file1 using sed \n"
	sed -n '/&#x2713;/ p' $file1
else
	echo -e "\n ## finding check marks in $file1 using grep \n"
	grep "&#x2713;" $file1
fi 