#!/usr/bin/env ksh

################################################################################
# Name : For loop
#-------------------------------------------------------------------------------
# Description : Demonstrates for loop logic in KornShell.
#-------------------------------------------------------------------------------
# Modification History:
# 01/10/26 Adrian - Initial Creation.
################################################################################

# Simple for loop with seq
for i in $(seq 1 2 20); do
    echo "Welcome $i times"
done

# set counter 'c' to 1 and condition
# c is less than or equal to 5
for ((c=1; c<=5; c++)); do
    echo "Welcome $c times"
done

# Loop over files in current directory
for var in $(ls); do
    echo "File is $var"
done

# Loop over script parameters
for parm in "$@"; do
    echo "Parameter: $parm"
done
