#!/usr/bin/env ksh

################################################################################
# Name : Expressions
#-------------------------------------------------------------------------------
# Description : Demonstrates expression evaluation in KornShell
#-------------------------------------------------------------------------------
# Modification History:
# 01/10/26 Adrian - Initial Creation.
################################################################################

print "=== expr examples ==="

# ---------------------------
# Arithmetic Expression
# ---------------------------

a=5
b=10

result=`expr 1 + $b`
print "expr 1 + b = $result"

# ---------------------------
# Comparison using expr
# ---------------------------

result=$(expr $a \< $b)
print "expr a < b = $result (1=true, 0=false)"

print "\n=== Arithmetic expansion $(( )) ==="

# ---------------------------
# Arithemetic Operations
# ---------------------------

result=$((1 + b))
print "1 + b = $result"

# ---------------------------
# Comparison Operation
# ---------------------------

result=$(( a < b ))
print "a < b = $result (1=true, 0=false)"

print "\n=== Test command [ ] ==="

# ---------------------------
# Numeric Comparison
# ---------------------------

if [ $a -lt $b ]; then
    print "a is less than b"
else
    print "a is not less than b"
fi

# ---------------------------
# String Comparison
# ---------------------------

str1="hello"
str2="world"

if [ "$str1" != "$str2" ]; then
    print "strings are not equal"
fi

# ---------------------------
# String length checks
# ---------------------------

if [ -n "$str1" ]; then
    print "str1 is not empty"
fi

if [ -z "" ]; then
    print "empty string detected"
fi

# ---------------------------
# File Test
# ---------------------------

print "\n=== File tests ==="

file="expressions.ksh"

if [ -f "$file" ]; then
    print "$file is a regular file"
fi

if [ -s "$file" ]; then
    print "$file is not empty"
fi

print "\n=== Multiple conditions ==="

rc=0

if [ $rc -eq 0 -a $a -lt $b ]; then
    print "rc is 0 AND a < b"
fi

if [ $rc -eq 1 -o $a -lt $b ]; then
    print "rc is 1 OR a < b"
fi

print "\n=== Script finished ==="
