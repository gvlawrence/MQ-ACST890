#! /bin/bash -v
# ACST890 - G.Lawrence - 83186557
# Q2.sh - move files listed in current_list from current dir to ../../new
#=======================================================================#
# ../../new is assumed to exist relative to current dir
#    eg. $BASE/new with current dir $BASE/OLQ2test/runQ2
#
# Script prepQ2.sh could be used to set things up for testing Q2.sh:
#    https://github.com/gvlawrence/MQ-ACST890/blob/master/OLQ2/prepQ2.sh
#=======================================================================#

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