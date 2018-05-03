#! /bin/bash
# ACST890 - G.Lawrence - 83186557
# Q2prep.sh - prepare files and dirs for Q2

# create directory from which Q2 test will run
mkdir -p OLQ2test/runQ2

# go to run dir and copy Q2.sh to here 
cd OLQ2test/runQ2
cp ../../Q2.sh .
dos2unix Q2.sh
chmod +x Q2.sh

# create the ?oo files and put their names in current_list file
for f1 in f g h i j k l; do 
  echo "$f1"oo | tee "$f1"oo >>current_list
done
 
# create the new dir where files will be copied
mkdir ../../new