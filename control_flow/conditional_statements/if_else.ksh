#!/usr/bin/env ksh

################################################################################
# Name : If_Else
#-------------------------------------------------------------------------------
# Description : Demonstrates conditional logic in KornShell.
#-------------------------------------------------------------------------------
# Modification History:
# 01/10/26 Adrian - Initial Creation.
################################################################################

# ---------------------------
# Example Comparison
# ---------------------------

amount=$1
duration=$2

if [[ $amount -ge 10000 ]]; then
    if [[ $duration -lt 7 ]]; then
        output="You will get 20% bonus"
    else
        output="You will get 15% bonus"
    fi
else
    if [[ $duration -le 10 ]]; then
        output="You will get 10% bonus"
    else
        output="You will get 5% bonus"
    fi
fi

echo "$output"

#exit 0
