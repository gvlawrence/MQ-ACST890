#! /bin/bash
# ACST890 - G.Lawrence - 83186557
# Q1a.sh - find all check marks in a html file

## default to search foo.html (override with 1st parm if supplied)
file1a="foo.html"
if [ $# -ge 1 ]; then file1a=$1; fi

## if 2nd parameter is "S" use sed, otherwise use grep
if [ $2 -eq "S" ]; then 
	sed -n '/&#x2713;/ p' $file1a
else
	grep "&#x2713;" $file1a
fi 