#!/usr/bin/env ksh

################################################################################
# Name : While loop
#-------------------------------------------------------------------------------
# Description : Demonstrates while loop logic in KornShell.
#-------------------------------------------------------------------------------
# Modification History:
# 01/10/26 Adrian - Initial Creation.
################################################################################

i=1
while [ $i -le 3 ]; do
    j=1
    while [ $j -le 3 ]; do
        if [ $j -eq 2 ]; then
            break
        fi
        echo "j: $j"
        j=$((j+1))
    done
    echo "i: $i"
    i=$((i+1))
done

echo "All done!"
