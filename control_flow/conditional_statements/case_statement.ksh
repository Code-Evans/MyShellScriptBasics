#!/usr/bin/env ksh

################################################################################
# Name : Case
#-------------------------------------------------------------------------------
# Description : Demonstrates basic Case Statement.
#-------------------------------------------------------------------------------
# Modification History:
# 01/10/26 Adrian - Initial Creation.
################################################################################

# Print grade based on the mark

# ---------------------------
# Example Case
# ---------------------------

name=$1
mark=$2

case $mark in
    9[0-9]|100)
        grade="A"
        ;;
    8[0-9])
        grade="A-"
        ;;
    7[0-9])
        grade="B+"
        ;;
    6[0-9])
        grade="C+"
        ;;
    [0-5][0-9])
        grade="F"
        ;;
    *)
        echo "Invalid mark"
        exit 1
        ;;
esac

echo "$name obtained grade $grade"

#exit 0
