#! /bin/bash -v
# ACST890 - G.Lawrence - 83186557
# Q2.sh - move files listed in current_list from current dir to ../../new

## check whether ../../new exists
ls -al ../../new

## check whether current_list and the ?oo files exist
ls -l ?oo current_list

## main Q2 sed command to move and rename the ?oo files
sed 's^.*^mv & ../../new/ACST890_s1_2018_&.txt^' current_list |bash -v

## show contents of new dir *after* move
ls -l ../../new

## check whether current_list and ?oo files exist *after* move
ls -l ?oo current_list